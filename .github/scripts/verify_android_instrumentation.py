#!/usr/bin/env python3
"""Require one successful critical-path test from raw adb instrumentation output."""

# cspell:ignore numtests

import argparse
from pathlib import Path
import re


TEST_CLASS = "com.yakuran.family_wish_list.MainActivityTest"
FAILURE = re.compile(
    r"\b(?:FAILURES|INSTRUMENTATION_FAILED|INSTRUMENTATION_ABORTED"
    r"|process\s+crashed|FATAL\s+EXCEPTION)\b",
    re.IGNORECASE,
)
STATUS = re.compile(r"^INSTRUMENTATION_STATUS: ([A-Za-z0-9_]+)=(.*)$")
STATUS_CODE = re.compile(r"^INSTRUMENTATION_STATUS_CODE: (-?\d+)$")
RESULT_CODE = re.compile(r"^INSTRUMENTATION_CODE: (-?\d+)$")
SUMMARY = re.compile(r"^OK \((\d+) tests?\)$")


class VerificationError(RuntimeError):
    pass


def verify_instrumentation(output):
    failure = FAILURE.search(output)
    if failure:
        raise VerificationError(f"Instrumentation reported {failure.group()}")

    lines = [line.strip() for line in output.splitlines() if line.strip()]
    if not lines or lines[-1] != "INSTRUMENTATION_CODE: -1":
        raise VerificationError("Log does not end with successful instrumentation")

    records = []
    pending = {}
    result_codes = []
    summaries = []
    for line in lines:
        status = STATUS.fullmatch(line)
        status_code = STATUS_CODE.fullmatch(line)
        result_code = RESULT_CODE.fullmatch(line)
        summary = SUMMARY.fullmatch(line)
        if status:
            key, value = status.groups()
            if key != "stream" and key in pending and pending[key] != value:
                raise VerificationError(f"Conflicting instrumentation field: {key}")
            pending[key] = value
        elif status_code:
            records.append((int(status_code.group(1)), pending))
            pending = {}
        elif result_code:
            result_codes.append(int(result_code.group(1)))
        elif summary:
            summaries.append(line)

    if summaries != ["OK (1 test)"]:
        raise VerificationError("Expected exactly one OK (1 test) result")
    if result_codes != [-1]:
        raise VerificationError("Missing or unsuccessful final instrumentation code")
    if [code for code, _ in records] != [1, 0]:
        raise VerificationError("Expected one started and one successful test")
    if pending:
        raise VerificationError("Incomplete instrumentation status after the test")

    for _, record in records:
        if record.get("class") != TEST_CLASS:
            raise VerificationError("Unexpected or missing instrumentation test class")
        if record.get("numtests") != "1" or record.get("current") != "1":
            raise VerificationError("Instrumentation did not execute exactly one test")
        if not record.get("test", "").strip():
            raise VerificationError("Instrumentation test name is missing")
    if records[0][1]["test"] != records[1][1]["test"]:
        raise VerificationError("Started and completed instrumentation tests differ")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("log", type=Path)
    args = parser.parse_args()
    try:
        verify_instrumentation(args.log.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, VerificationError) as error:
        message = f"Android instrumentation verification failed: {error}"
        raise SystemExit(message) from None
    print("Android critical path verified: OK (1 test)")


if __name__ == "__main__":
    main()
