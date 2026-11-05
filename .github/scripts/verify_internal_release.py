#!/usr/bin/env python3
"""Verify the uploaded artifact on the stores, without external review submission.

Apple: https://developer.apple.com/documentation/appstoreconnectapi/beta-groups
Play: https://developers.google.com/android-publisher/api-ref/rest/v3/edits.tracks/get
Dependencies are already provided by requirements-cd.txt (CodeMagic CLI).
"""

import argparse
import glob
import hashlib
import json
import os
from pathlib import Path
import plistlib
import subprocess
import time
from datetime import datetime, timezone
from urllib.parse import urlparse
import zipfile


class VerificationError(RuntimeError):
    pass


class AppleApi:
    origin = "https://api.appstoreconnect.apple.com"

    def request(self, method, path, **kwargs):
        # Keep credentials scoped to Apple's API, including pagination links.
        import jwt
        import requests

        url = path if path.startswith("https://") else self.origin + path
        if urlparse(url).netloc != urlparse(self.origin).netloc:
            raise VerificationError("Unexpected App Store Connect pagination host")
        now = int(time.time())
        token = jwt.encode(
            {"iss": os.environ["APP_STORE_CONNECT_ISSUER_ID"],
             "iat": now, "exp": now + 600, "aud": "appstoreconnect-v1"},
            os.environ["APP_STORE_CONNECT_PRIVATE_KEY"],
            algorithm="ES256",
            headers={"kid": os.environ["APP_STORE_CONNECT_KEY_IDENTIFIER"]},
        )
        for attempt in range(5):
            try:
                response = requests.request(
                    method, url, headers={"Authorization": "Bearer " + token},
                    timeout=60, **kwargs,
                )
            except requests.RequestException:
                if attempt == 4:
                    raise VerificationError("App Store Connect request failed") from None
            else:
                if response.ok:
                    return response.json() if response.content else {}
                if response.status_code != 429 and response.status_code < 500:
                    raise VerificationError(
                        f"App Store Connect request failed (HTTP {response.status_code})"
                    )
                if attempt == 4:
                    raise VerificationError("App Store Connect temporary error persisted")
            time.sleep(5 * (attempt + 1))

    def resources(self, path, **params):
        items = []
        while path:
            payload = self.request("GET", path, params=params)
            items.extend(payload["data"])
            path = payload.get("links", {}).get("next")
            params = {}
        return items


def ipa_metadata(path):
    with zipfile.ZipFile(path) as archive:
        names = [name for name in archive.namelist()
                 if len(name.split("/")) == 3
                 and name.startswith("Payload/") and name.endswith(".app/Info.plist")]
        if len(names) != 1:
            raise VerificationError("IPA must contain exactly one application Info.plist")
        info = plistlib.loads(archive.read(names[0]))
    return {"bundle_id": info["CFBundleIdentifier"],
            "version": info["CFBundleShortVersionString"],
            "build_number": str(info["CFBundleVersion"])}


def aab_metadata(path):
    from codemagic.shell_tools import Bundletool

    tool = Bundletool()
    package = tool.dump("manifest", path, xpath="/manifest/@package", show_output=False).strip()
    version = tool.dump(
        "manifest", path, xpath="/manifest/@android:versionCode", show_output=False,
    ).strip()
    if not package or not version.isdigit():
        raise VerificationError("Unable to read the application ID/versionCode from AAB")
    return {"package_name": package, "version_code": version}


def valid_build(build):
    attrs = build["attributes"]
    state = attrs.get("processingState")
    if state in {"FAILED", "INVALID"}:
        raise VerificationError(f"Apple rejected build processing: {state}")
    if state != "VALID":
        return False
    if attrs.get("expired") is not False:
        raise VerificationError("Apple build is expired or expiry status is missing")
    expires = attrs.get("expirationDate")
    if not expires or datetime.fromisoformat(expires.replace("Z", "+00:00")) <= datetime.now(timezone.utc):
        raise VerificationError("Apple build expiration date is missing or elapsed")
    return True


def verify_ios(api, metadata, timeout=2400, pause=30):
    apps = api.resources("/v1/apps", **{"filter[bundleId]": metadata["bundle_id"], "limit": 200})
    if len(apps) != 1:
        raise VerificationError("Expected exactly one matching App Store Connect app")
    app_id = apps[0]["id"]
    groups = [group for group in api.resources(f"/v1/apps/{app_id}/betaGroups", limit=200)
              if group["attributes"].get("isInternalGroup") is True]
    if not groups:
        raise VerificationError("No existing internal TestFlight group was found")

    deadline = time.monotonic() + timeout
    while True:
        builds = api.resources("/v1/builds", **{
            "filter[app]": app_id, "filter[version]": metadata["build_number"],
            "filter[preReleaseVersion.version]": metadata["version"],
            "filter[preReleaseVersion.platform]": "IOS", "limit": 200,
        })
        if len(builds) > 1:
            raise VerificationError("Multiple Apple builds match the uploaded IPA")
        if builds and valid_build(builds[0]):
            build = builds[0]
            break
        if time.monotonic() >= deadline:
            raise VerificationError("Timed out waiting for Apple build processing")
        print("Waiting for the exact uploaded Apple build to finish processing", flush=True)
        time.sleep(pause)

    build_id = build["id"]
    for group in groups:
        path = f"/v1/betaGroups/{group['id']}/relationships/builds"
        if build_id not in {item["id"] for item in api.resources(path, limit=200)}:
            # Add only to existing internal groups; no tester/group creation or beta review.
            api.request("POST", path, json={"data": [{"type": "builds", "id": build_id}]})

    while True:
        build = api.request("GET", f"/v1/builds/{build_id}")["data"]
        valid = valid_build(build)
        detail = api.request("GET", f"/v1/builds/{build_id}/buildBetaDetail")["data"]
        state = detail["attributes"].get("internalBuildState")
        if state in {"EXPIRED", "PROCESSING_EXCEPTION", "MISSING_EXPORT_COMPLIANCE"}:
            raise VerificationError(f"Apple internal testing is blocked: {state}")
        memberships = [group for group in groups if build_id in {
            item["id"] for item in api.resources(
                f"/v1/betaGroups/{group['id']}/relationships/builds", limit=200,
            )
        }]
        if valid and state in {"READY_FOR_BETA_TESTING", "IN_BETA_TESTING"} and len(memberships) == len(groups):
            return {**metadata, "build_id": build_id, "processing_state": "VALID",
                    "expired": False, "internal_build_state": state,
                    "internal_groups": [{"id": group["id"], "name": group["attributes"]["name"]}
                                        for group in memberships]}
        if time.monotonic() >= deadline:
            raise VerificationError("Timed out waiting for internal TestFlight availability/membership")
        print("Waiting for internal TestFlight availability and group membership", flush=True)
        time.sleep(pause)


def completed_internal_release(track, version_code):
    if track.get("track") != "internal":
        raise VerificationError("Google Play response was not for the internal track")
    return any(release.get("status") == "completed"
               and str(version_code) in {str(code) for code in release.get("versionCodes", [])}
               for release in track.get("releases", []))


def verify_android(metadata, timeout=300, pause=15):
    deadline = time.monotonic() + timeout
    while True:
        track = json.loads(subprocess.check_output([
            "google-play", "tracks", "get", "--package-name", metadata["package_name"],
            "--track", "internal", "--json",
        ], text=True))
        if completed_internal_release(track, metadata["version_code"]):
            return {**metadata, "track": "internal", "status": "completed"}
        if time.monotonic() >= deadline:
            raise VerificationError("Uploaded AAB versionCode is not completed on Google Play internal")
        print("Waiting for the uploaded versionCode on Google Play internal", flush=True)
        time.sleep(pause)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("platform", choices=("ios", "android"))
    parser.add_argument("--artifact", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    paths = glob.glob(args.artifact)
    if len(paths) != 1:
        raise VerificationError("Expected exactly one release artifact")
    artifact = Path(paths[0])
    if args.platform == "ios":
        result = verify_ios(AppleApi(), ipa_metadata(artifact))
    else:
        result = verify_android(aab_metadata(artifact))
    with artifact.open("rb") as stream:
        digest = hashlib.file_digest(stream, "sha256").hexdigest()
    result.update({"platform": args.platform,
                   "artifact_sha256": digest,
                   "source_sha": subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip(),
                   "verified_at": datetime.now(timezone.utc).isoformat()})
    Path(args.output).write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    if summary:
        with open(summary, "a") as stream:
            stream.write(f"### {args.platform} internal release verified\n\n```json\n")
            stream.write(json.dumps(result, indent=2) + "\n```\n")


if __name__ == "__main__":
    try:
        main()
    except (VerificationError, KeyError) as error:
        raise SystemExit(str(error)) from None
