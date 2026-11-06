import copy
import unittest
from unittest.mock import patch

import verify_emulator_state as emulator


def complete_state():
    user = {"id": "uid", "name": "E2Eユーザー", "ageGroup": "child", "joinGroupIds": ["group"]}
    return {"accounts": [{"uid": "uid", "disabled": False}],
            "users": [{"path": "users/uid", "data": user}],
            "groups": [{"path": "groups/group", "data": {
                "id": "group", "ownerUid": "uid", "joinUids": ["uid"],
            }}],
            "participants": [{"path": "groups/group/participants/uid", "data": copy.deepcopy(user)}],
            "items": [], "errors": []}


class EmulatorStateTests(unittest.TestCase):
    def test_completed_crud_and_functions_projection_pass(self):
        self.assertEqual(emulator.validation_errors(complete_state()), [])

    def test_missing_or_stale_participant_fails_even_when_ui_data_exists(self):
        missing = complete_state()
        missing["participants"] = []
        stale = complete_state()
        stale["participants"][0]["data"]["ageGroup"] = "adult"
        for state in (missing, stale):
            with self.subTest(state=state):
                self.assertTrue(any("participant projection" in item
                                    for item in emulator.validation_errors(state)))

    def test_wrong_owner_or_undeleted_items_fail(self):
        wrong_owner = complete_state()
        wrong_owner["groups"][0]["data"]["ownerUid"] = "someone-else"
        undeleted = complete_state()
        undeleted["items"] = [{"path": "groups/group/items/item", "data": {}}]
        for state in (wrong_owner, undeleted):
            with self.subTest(state=state):
                self.assertTrue(emulator.validation_errors(state))

    def test_capture_errors_cannot_pass(self):
        state = complete_state()
        state["errors"] = ["accounts: connection refused"]
        self.assertTrue(emulator.validation_errors(state))

    def test_production_document_identity_and_mutation_are_rejected(self):
        with self.assertRaises(emulator.CollectionError):
            emulator.decode_document({"name": "projects/production/databases/(default)/documents/users/uid"})
        reader = emulator.EmulatorReader(deadline=0)
        with patch.object(reader.opener, "open") as opened:
            for port, path, body in (
                (443, "/v1/projects/production", None),
                (8080, f"/v1/{emulator.DOCUMENTS}/users/uid", {"fields": {}}),
            ):
                with self.subTest(path=path), self.assertRaises(emulator.CollectionError):
                    reader.request(port, path, body)
            opened.assert_not_called()


if __name__ == "__main__":
    unittest.main()
