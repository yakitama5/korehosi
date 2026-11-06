#!/usr/bin/env bash
# cspell:ignore pipefail gradlew logcat dumpsys screencap getprop keyevent keyguard meminfo
set -Eeuo pipefail

if [[ "${CI:-}" != true ]]; then
  echo 'This runner is intended for the isolated Android CI job.' >&2
  exit 2
fi

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
app_dir="$repo_root/apps/app"
android_dir="$app_dir/android"
diagnostics_dir="$repo_root/patrol-android-diagnostics"
properties="$android_dir/gradle.properties"
scratch_dir="$(mktemp -d "${RUNNER_TEMP:-${TMPDIR:-/tmp}}/korehosi-android-ci.XXXXXX")"
properties_saved=false
device_selected=false
adb_command=(adb)
mkdir -p "$diagnostics_dir"

stop_gradle() {
  if [[ -f "$android_dir/gradlew" ]]; then
    (cd "$android_dir" && timeout 60s ./gradlew --stop)
  fi
}

cleanup() {
  result=$?
  trap - EXIT INT TERM
  set +e
  stop_gradle >> "$diagnostics_dir/gradle-stop.log" 2>&1
  if [[ "$device_selected" == true ]]; then
    timeout 15s "${adb_command[@]}" logcat -d -v threadtime > "$diagnostics_dir/logcat.log" 2>&1
    timeout 15s "${adb_command[@]}" shell dumpsys activity activities > "$diagnostics_dir/activity.log" 2>&1
    timeout 15s "${adb_command[@]}" shell dumpsys window > "$diagnostics_dir/window.log" 2>&1
    timeout 15s "${adb_command[@]}" shell dumpsys meminfo > "$diagnostics_dir/android-memory.log" 2>&1
    timeout 15s "${adb_command[@]}" shell getprop > "$diagnostics_dir/device-properties.log" 2>&1
    if ! timeout 15s "${adb_command[@]}" exec-out screencap -p \
      > "$diagnostics_dir/screenshot.png" 2> "$diagnostics_dir/screenshot-error.log"; then
      rm -f "$diagnostics_dir/screenshot.png"
    fi
  fi
  free -m > "$diagnostics_dir/host-memory.log" 2>&1
  df -h > "$diagnostics_dir/host-disk.log" 2>&1
  if [[ "$properties_saved" == true ]]; then
    if ! cp -p "$scratch_dir/gradle.properties" "$properties"; then
      result=1
    fi
  fi
  {
    for log in build gradle-stop app-install test-install instrumentation; do
      if [[ -f "$diagnostics_dir/$log.log" ]]; then
        printf '\n===== %s =====\n' "$log"
        cat "$diagnostics_dir/$log.log"
      fi
    done
  } > "$repo_root/patrol-android.log"
  rm -rf "$scratch_dir"
  exit "$result"
}
trap cleanup EXIT
trap 'exit 130' INT
trap 'exit 143' TERM

# Bound the build while the AVD and Firebase emulators share the runner.
# Restore the production defaults on every exit, including failed builds.
cp -p "$properties" "$scratch_dir/gradle.properties"
properties_saved=true
python3 - "$properties" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
overrides = {
    "org.gradle.jvmargs": "-Xmx1536m -XX:MaxMetaspaceSize=768m -XX:ReservedCodeCacheSize=256m -Dfile.encoding=UTF-8",
    "org.gradle.workers.max": "1",
    "org.gradle.parallel": "false",
    "org.gradle.daemon": "false",
    "kotlin.compiler.execution.strategy": "in-process",
}
lines = [line for line in path.read_text().splitlines()
         if line.partition("=")[0].strip() not in overrides]
lines.extend(f"{key}={value}" for key, value in overrides.items())
path.write_text("\n".join(lines) + "\n")
PY
cp "$properties" "$diagnostics_dir/gradle.properties"

device_serial="${ANDROID_SERIAL:-}"
if [[ -z "$device_serial" ]]; then
  device_serial="$(timeout 15s adb devices | awk '$1 ~ /^emulator-/ && $2 == "device" {print $1}')"
fi
if [[ ! "$device_serial" =~ ^emulator-[0-9]+$ ]]; then
  echo 'Expected exactly one booted CI emulator.' >&2
  exit 2
fi
adb_command=(adb -s "$device_serial")
device_selected=true
timeout 60s "${adb_command[@]}" wait-for-device
timeout 15s "${adb_command[@]}" logcat -c

(
  cd "$app_dir"
  timeout --signal=TERM --kill-after=30s 1500s patrol build android \
    --target patrol_test/critical_flow_test.dart \
    --verbose \
    --dart-define-from-file "$repo_root/.github/e2e_dart_defines.json" \
    --dart-define useFirebaseEmulators=true \
    --dart-define firebaseEmulatorHost=10.0.2.2
) 2>&1 | tee "$diagnostics_dir/build.log"

# The direct native runner is proven on a device. Do not keep the build JVM
# resident while running the app, or involve the Gradle test orchestrator.
stop_gradle 2>&1 | tee "$diagnostics_dir/gradle-stop.log"
app_apk="$app_dir/build/app/outputs/apk/debug/app-debug.apk"
test_apk="$app_dir/build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk"
test -s "$app_apk"
test -s "$test_apk"
timeout 30s "${adb_command[@]}" uninstall com.yakuran.family_wish_list.dev.test > "$diagnostics_dir/uninstall.log" 2>&1 || true
timeout 30s "${adb_command[@]}" uninstall com.yakuran.family_wish_list.dev >> "$diagnostics_dir/uninstall.log" 2>&1 || true
timeout 120s "${adb_command[@]}" install -t "$app_apk" 2>&1 | tee "$diagnostics_dir/app-install.log"
timeout 120s "${adb_command[@]}" install -t "$test_apk" 2>&1 | tee "$diagnostics_dir/test-install.log"
timeout 15s "${adb_command[@]}" shell input keyevent KEYCODE_WAKEUP
timeout 15s "${adb_command[@]}" shell wm dismiss-keyguard
timeout --signal=TERM --kill-after=15s 300s "${adb_command[@]}" shell am instrument -w -r \
  -e class com.yakuran.family_wish_list.MainActivityTest \
  com.yakuran.family_wish_list.dev.test/pl.leancode.patrol.PatrolJUnitRunner \
  2>&1 | tee "$diagnostics_dir/instrumentation.log"

# adb can exit successfully even when native instrumentation crashes.
python3 "$repo_root/.github/scripts/verify_android_instrumentation.py" \
  "$diagnostics_dir/instrumentation.log"
timeout 90s python3 "$repo_root/.github/scripts/verify_emulator_state.py" \
  --output "$repo_root/emulator-state-android.json" --verify
