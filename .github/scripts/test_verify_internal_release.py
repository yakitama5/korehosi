import copy
from datetime import datetime, timedelta, timezone
from pathlib import Path
import plistlib
import tempfile
import unittest
from unittest.mock import patch
import zipfile

import verify_internal_release as release


METADATA = {"bundle_id": "com.example.app", "version": "1.1.0", "build_number": "43"}


def build(state="VALID"):
    return {"id": "build-43", "attributes": {
        "processingState": state, "expired": False,
        "expirationDate": (datetime.now(timezone.utc) + timedelta(days=89)).isoformat(),
    }}


class FakeAppleApi:
    def __init__(self):
        self.groups = [
            {"id": "internal", "attributes": {"name": "Team", "isInternalGroup": True}},
            {"id": "external", "attributes": {"name": "Public", "isInternalGroup": False}},
        ]
        self.members = set()
        self.writes = []
        self.build = build()
        self.build_params = None
        self.internal_state = "IN_BETA_TESTING"

    def resources(self, path, **params):
        if path == "/v1/apps":
            if params["filter[bundleId]"] != METADATA["bundle_id"]:
                raise AssertionError("Unexpected bundle")
            return [{"id": "app"}]
        if path == "/v1/apps/app/betaGroups":
            return self.groups
        if path == "/v1/builds":
            self.build_params = params
            return [self.build]
        if path == "/v1/betaGroups/internal/relationships/builds":
            return [{"id": item} for item in self.members]
        raise AssertionError(f"Unexpected resource path {path}")

    def request(self, method, path, **kwargs):
        if method == "POST":
            self.writes.append((path, kwargs["json"]))
            if path != "/v1/betaGroups/internal/relationships/builds":
                raise AssertionError("Only internal group assignment is allowed")
            self.members.add(kwargs["json"]["data"][0]["id"])
            return {}
        if path == "/v1/builds/build-43":
            return {"data": self.build}
        if path == "/v1/builds/build-43/buildBetaDetail":
            return {"data": {"attributes": {"internalBuildState": self.internal_state}}}
        raise AssertionError(f"Unexpected request {method} {path}")


class InternalReleaseTests(unittest.TestCase):
    def test_ipa_reads_main_app_and_ignores_extension(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "app.ipa"
            with zipfile.ZipFile(path, "w") as archive:
                archive.writestr("Payload/Runner.app/Info.plist", plistlib.dumps({
                    "CFBundleIdentifier": METADATA["bundle_id"],
                    "CFBundleShortVersionString": "1.1.0", "CFBundleVersion": "43",
                }))
                archive.writestr("Payload/Runner.app/PlugIns/Widget.appex/Info.plist", b"extension")
            self.assertEqual(release.ipa_metadata(path), METADATA)

    def test_assigns_only_internal_group_and_matches_exact_version(self):
        api = FakeAppleApi()
        result = release.verify_ios(api, METADATA, timeout=0)
        self.assertEqual(result["internal_build_state"], "IN_BETA_TESTING")
        self.assertEqual(result["internal_groups"], [{"id": "internal", "name": "Team"}])
        self.assertEqual(api.build_params["filter[version]"], "43")
        self.assertEqual(api.build_params["filter[preReleaseVersion.version]"], "1.1.0")
        self.assertEqual(api.build_params["filter[preReleaseVersion.platform]"], "IOS")
        self.assertEqual(len(api.writes), 1)

    def test_existing_membership_is_idempotent(self):
        api = FakeAppleApi()
        api.members.add("build-43")
        api.internal_state = "READY_FOR_BETA_TESTING"
        release.verify_ios(api, METADATA, timeout=0)
        self.assertEqual(api.writes, [])

    def test_no_internal_group_fails_without_assignment(self):
        api = FakeAppleApi()
        api.groups = [api.groups[1]]
        with self.assertRaisesRegex(release.VerificationError, "No existing internal"):
            release.verify_ios(api, METADATA, timeout=0)
        self.assertEqual(api.writes, [])

    def test_processing_waits_without_requiring_expiration_or_assigning(self):
        api = FakeAppleApi()
        api.build = {"id": "build-43", "attributes": {"processingState": "PROCESSING"}}
        with self.assertRaisesRegex(release.VerificationError, "Timed out"):
            release.verify_ios(api, METADATA, timeout=0)
        self.assertEqual(api.writes, [])

    def test_invalid_processing_fails_immediately(self):
        for state in ("FAILED", "INVALID"):
            with self.subTest(state=state), self.assertRaises(release.VerificationError):
                release.valid_build(build(state))

    def test_valid_build_rejects_expired_missing_and_elapsed_expiration(self):
        expired = build()
        expired["attributes"]["expired"] = True
        missing = build()
        del missing["attributes"]["expirationDate"]
        elapsed = build()
        elapsed["attributes"]["expirationDate"] = "2020-01-01T00:00:00Z"
        for candidate in (expired, missing, elapsed):
            with self.subTest(candidate=candidate), self.assertRaises(release.VerificationError):
                release.valid_build(candidate)

    def test_internal_membership_must_be_visible_after_assignment(self):
        api = FakeAppleApi()
        with patch.object(api, "request", wraps=api.request) as request:
            def no_membership(method, path, **kwargs):
                if method == "POST":
                    return {}
                return request._mock_wraps(method, path, **kwargs)
            request.side_effect = no_membership
            with self.assertRaisesRegex(release.VerificationError, "availability/membership"):
                release.verify_ios(api, METADATA, timeout=0)

    def test_missing_export_compliance_does_not_count_as_available(self):
        api = FakeAppleApi()
        api.internal_state = "MISSING_EXPORT_COMPLIANCE"
        with self.assertRaisesRegex(release.VerificationError, "blocked"):
            release.verify_ios(api, METADATA, timeout=0)

    def test_play_requires_correct_track_version_and_completed_status(self):
        track = {"track": "internal", "releases": [{"versionCodes": ["43"], "status": "completed"}]}
        self.assertTrue(release.completed_internal_release(track, 43))
        self.assertFalse(release.completed_internal_release(track, 42))
        for state in ("draft", "inProgress", "halted"):
            other = copy.deepcopy(track)
            other["releases"][0]["status"] = state
            self.assertFalse(release.completed_internal_release(other, 43))
        with self.assertRaises(release.VerificationError):
            release.completed_internal_release({**track, "track": "production"}, 43)

    @patch("verify_internal_release.subprocess.check_output")
    def test_play_fresh_read_uses_internal_track_and_exact_artifact(self, command):
        command.return_value = '{"track":"internal","releases":[{"versionCodes":["43"],"status":"completed"}]}'
        result = release.verify_android({"package_name": "com.example.app", "version_code": "43"})
        self.assertEqual(result["status"], "completed")
        self.assertEqual(command.call_args.args[0], [
            "google-play", "tracks", "get", "--package-name", "com.example.app",
            "--track", "internal", "--json",
        ])


if __name__ == "__main__":
    unittest.main()
