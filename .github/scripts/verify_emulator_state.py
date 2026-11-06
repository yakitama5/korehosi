#!/usr/bin/env python3
"""Read development emulators and verify the completed critical-path state."""

import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import time
from urllib.error import HTTPError
from urllib.parse import quote, urlencode, urlparse
from urllib.request import HTTPRedirectHandler, ProxyHandler, Request, build_opener


PROJECT = "family-wish-list-ad3c7-dev"
DOCUMENTS = f"projects/{PROJECT}/databases/(default)/documents"
EXPECTED_NAME = "E2Eユーザー"


class CollectionError(RuntimeError):
    pass


class NoRedirect(HTTPRedirectHandler):
    def redirect_request(self, req, fp, code, msg, headers, newurl):
        raise CollectionError("Emulator redirects are not allowed")


class EmulatorReader:
    def __init__(self, deadline):
        self.deadline = deadline
        self.opener = build_opener(ProxyHandler({}), NoRedirect())

    def request(self, port, path, body=None):
        # No configurable project, host, credentials, or mutating API is accepted.
        url = f"http://127.0.0.1:{port}{path}"
        parsed = urlparse(url)
        allowed_prefix = (
            f"/identitytoolkit.googleapis.com/v1/projects/{PROJECT}/accounts:batchGet"
            if port == 9099 else f"/v1/{DOCUMENTS}"
        )
        if (port not in {9099, 8080} or parsed.hostname != "127.0.0.1"
                or not parsed.path.startswith(allowed_prefix)
                or (body is not None and parsed.path != f"/v1/{DOCUMENTS}:runQuery")):
            raise CollectionError("Only read-only development emulator APIs are allowed")
        remaining = self.deadline - time.monotonic()
        if remaining <= 0:
            raise CollectionError("Emulator collection deadline reached")
        request = Request(
            url, data=json.dumps(body).encode() if body is not None else None,
            headers={"Authorization": "Bearer owner", "Content-Type": "application/json"},
            method="POST" if body is not None else "GET",
        )
        try:
            with self.opener.open(request, timeout=min(3, remaining)) as response:
                return json.load(response)
        except HTTPError as error:
            raise CollectionError(f"Emulator HTTP {error.code} on port {port}") from None

    def pages(self, port, path, key, query, token_key):
        values = []
        seen = set()
        for _ in range(10):
            payload = self.request(port, path + "?" + urlencode(query))
            values.extend(payload.get(key, []))
            token = payload.get("nextPageToken")
            if not token:
                return values
            if token in seen:
                raise CollectionError("Emulator pagination repeated a token")
            seen.add(token)
            query[token_key] = token
        raise CollectionError("Emulator pagination exceeded its diagnostic limit")

    def accounts(self):
        users = self.pages(
            9099, f"/identitytoolkit.googleapis.com/v1/projects/{PROJECT}/accounts:batchGet",
            "users", {"maxResults": 1000}, "nextPageToken",
        )
        # Password hashes, refresh tokens, and email addresses are not needed.
        return [{"uid": user.get("localId"), "disabled": user.get("disabled", False)}
                for user in users]

    def documents(self, collection):
        path = "/v1/" + DOCUMENTS + "/" + "/".join(quote(part, safe="") for part in collection.split("/"))
        docs = self.pages(8080, path, "documents", {"pageSize": 1000}, "pageToken")
        return [decode_document(document) for document in docs]

    def items(self):
        result = self.request(8080, f"/v1/{DOCUMENTS}:runQuery", {
            "structuredQuery": {"from": [{"collectionId": "items", "allDescendants": True}]},
        })
        return [decode_document(row["document"]) for row in result if "document" in row]


def decode_value(value):
    if "arrayValue" in value:
        return [decode_value(item) for item in value["arrayValue"].get("values", [])]
    if "mapValue" in value:
        return {key: decode_value(item) for key, item in value["mapValue"].get("fields", {}).items()}
    if "integerValue" in value:
        return int(value["integerValue"])
    if "nullValue" in value:
        return None
    return next(iter(value.values()))


def decode_document(document):
    prefix = DOCUMENTS + "/"
    name = document["name"]
    if not name.startswith(prefix):
        raise CollectionError("Firestore returned a document outside the development project")
    return {"path": name[len(prefix):],
            "data": {key: decode_value(value) for key, value in document.get("fields", {}).items()}}


def collect_state(reader):
    state = {"accounts": [], "users": [], "groups": [], "participants": [], "items": [], "errors": []}
    for key, read in (("accounts", reader.accounts),
                      ("users", lambda: reader.documents("users")),
                      ("groups", lambda: reader.documents("groups")),
                      ("items", reader.items)):
        try:
            state[key] = read()
        except (OSError, ValueError, KeyError, CollectionError) as error:
            state["errors"].append(f"{key}: {error}")
    for group in state["groups"]:
        parts = group["path"].split("/")
        if len(parts) != 2 or parts[0] != "groups":
            state["errors"].append("Unexpected group document path")
            continue
        try:
            state["participants"].extend(reader.documents(f"groups/{parts[1]}/participants"))
        except (OSError, ValueError, KeyError, CollectionError) as error:
            state["errors"].append(f"participants: {error}")
    return state


def validation_errors(state):
    errors = list(state["errors"])
    if len(state["accounts"]) != 1 or not state["accounts"][0].get("uid"):
        errors.append("Expected exactly one Auth account")
    if len(state["users"]) != 1:
        errors.append("Expected exactly one user document")
    if len(state["groups"]) != 1:
        errors.append("Expected exactly one group document")
    if state["items"]:
        errors.append("Expected no items after the UI deletion")
    if errors:
        return errors

    uid = state["accounts"][0]["uid"]
    user = state["users"][0]
    group = state["groups"][0]
    group_id = group["path"].split("/")[-1]
    if (state["accounts"][0].get("disabled") is not False
            or user["path"] != f"users/{uid}" or user["data"].get("id") != uid
            or user["data"].get("name") != EXPECTED_NAME
            or user["data"].get("ageGroup") not in {"child", "adult"}):
        errors.append("Auth account and the critical-path user do not match")
    if (group["path"] != f"groups/{group_id}" or group["data"].get("id") != group_id
            or group["data"].get("ownerUid") != uid or group["data"].get("joinUids") != [uid]
            or user["data"].get("joinGroupIds") != [group_id]):
        errors.append("User and group ownership/membership do not match")
    participants = state["participants"]
    if (len(participants) != 1 or participants[0]["path"] != f"groups/{group_id}/participants/{uid}"
            or any(participants[0]["data"].get(key) != user["data"].get(key)
                   for key in ("id", "name", "ageGroup", "joinGroupIds"))):
        errors.append("Functions participant projection is missing or does not match the user")
    return errors


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True)
    parser.add_argument("--verify", action="store_true", help="Wait at most 60 seconds for the completed E2E state")
    args = parser.parse_args()
    deadline = time.monotonic() + (60 if args.verify else 15)
    attempts = 0
    while True:
        attempts += 1
        state = collect_state(EmulatorReader(deadline))
        errors = validation_errors(state)
        report = {"project_id": PROJECT, "emulator_host": "127.0.0.1", "read_only": True,
                  "mode": "verify" if args.verify else "capture", "verified": not errors,
                  "attempts": attempts, "captured_at": datetime.now(timezone.utc).isoformat(),
                  "validation_errors": errors, **state}
        Path(args.output).write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n")
        if not args.verify or not errors:
            break
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            break
        time.sleep(min(3, remaining))
    print(f"Emulator state: {'verified' if not errors else 'incomplete'}; report: {args.output}")
    if args.verify and errors:
        raise SystemExit("Emulator state verification failed: " + "; ".join(errors))


if __name__ == "__main__":
    main()
