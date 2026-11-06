# End-to-end tests

Patrol drives the Flutter UI and native platform UI. Install the CLI version
compatible with the `patrol` package before running the suite. Use the Flutter
SDK selected by `.fvmrc`; the CLI and application must use the same Dart SDK:

```sh
export PATH="$PWD/.fvm/flutter_sdk/bin:$HOME/.pub-cache/bin:$PATH"
dart pub global activate patrol_cli 4.9.0
patrol doctor
```

Run tests from `apps/app`. The smoke test boots the development app with the
supplied compile-time configuration:

```sh
patrol test \
  --target patrol_test/app_smoke_test.dart \
  --dart-define-from-file dart_defines/dev.json
```

For emulator-backed tests, start Firebase Emulator Suite from the repository
root in a separate terminal:

```sh
firebase emulators:start --project family-wish-list-ad3c7-dev \
  --only auth,firestore,functions,storage
```

The critical-path test covers anonymous onboarding, required item-name
validation, item create/edit/delete, and returning to the app from the home
screen. It requires `useFirebaseEmulators=true` before application startup.
The test explicitly signs out because iOS Keychain credentials can survive an
uninstall; it does **not** reset the Auth or Firestore emulator server. Start
fresh emulators without imported data, or clear only the local test data before
a repeat run:

```sh
curl --fail --request DELETE \
  http://127.0.0.1:9099/emulator/v1/projects/family-wish-list-ad3c7-dev/accounts
curl --fail --request DELETE \
  'http://127.0.0.1:8080/emulator/v1/projects/family-wish-list-ad3c7-dev/databases/(default)/documents'
```

Then run the critical path from `apps/app` with the checked-in development
configuration:

```sh
patrol test \
  --target patrol_test/critical_flow_test.dart \
  --uninstall --full-isolation \
  --dart-define-from-file ../../.github/e2e_dart_defines.json \
  --dart-define useFirebaseEmulators=true
```

Android emulators use `10.0.2.2` to reach the host by default. A USB-connected
physical Android device instead needs reverse forwarding and an explicit host.
Select its serial from `adb devices -l`, then run from the repository root:

```sh
ANDROID_DEVICE_ID=device-serial
for EMULATOR_PORT in 9099 8080 5001 9199; do
  adb -s "$ANDROID_DEVICE_ID" reverse "tcp:$EMULATOR_PORT" "tcp:$EMULATOR_PORT"
done

cd apps/app
patrol test \
  --device "$ANDROID_DEVICE_ID" \
  --target patrol_test/critical_flow_test.dart \
  --uninstall \
  --dart-define-from-file ../../.github/e2e_dart_defines.json \
  --dart-define useFirebaseEmulators=true \
  --dart-define firebaseEmulatorHost=127.0.0.1
```

The application selects the emulator host before configuring each Firebase SDK
and disables their `automaticHostMapping`. Otherwise FlutterFire rewrites
`127.0.0.1` to `10.0.2.2` on Android, bypassing USB reverse forwarding on a
physical device. This applies to Auth, Firestore, Functions, and Storage.

Remove these forwards after testing with `adb -s "$ANDROID_DEVICE_ID" reverse
--remove tcp:PORT` for each of the four ports. The development package is
`com.yakuran.family_wish_list.dev`, separate from the production application.

## GitHub Actions

The `Patrol E2E` workflow has manual and scheduled triggers. It does not run on
pull requests. Scheduled runs and manual runs with `build_local_simulator=false`
run both iOS and Android critical paths. They upload Patrol and Firebase Emulator
logs; an iOS failure also captures the current simulator screen.

With `build_local_simulator=true`, the workflow instead builds a normal debug
application for operation in a **local** iOS simulator. It uses the runner's
latest stable Xcode, development Bundle ID, emulator connection settings, and
placeholder environment values. It does not run the critical paths in this
mode or publish an application to a store.

```sh
gh workflow run patrol_e2e.yaml --ref your-branch \
  -f build_local_simulator=true
```

After the build finishes, download its `ios-local-simulator` artifact. The
artifact contains `ios-local-simulator.zip` and `ios-local-simulator.json` with
the source commit, SDK, version, Bundle ID, and archive SHA256. Check the commit
and checksum before installing the app:

```sh
SIMULATOR_BUILD_RUN=run-id
IOS_SIMULATOR_ID=simulator-id
gh run download "$SIMULATOR_BUILD_RUN" --name ios-local-simulator \
  --dir /tmp/korehosi-ios-simulator
ditto -x -k /tmp/korehosi-ios-simulator/ios-local-simulator.zip \
  /tmp/korehosi-ios-simulator/app

xcrun simctl boot "$IOS_SIMULATOR_ID" || true
xcrun simctl bootstatus "$IOS_SIMULATOR_ID" -b
xcrun simctl install "$IOS_SIMULATOR_ID" \
  /tmp/korehosi-ios-simulator/app/Runner.app
xcrun simctl launch --terminate-running-process "$IOS_SIMULATOR_ID" \
  com.yakuran.familyWishList.dev
```

Choose an available simulator using `xcrun simctl list devices available`.
Keep the local Firebase emulators running: this artifact connects to
`127.0.0.1`. The CI build can be used when the local Xcode cannot compile the
selected Firebase SDK; actual launch and UI checks still take place locally.

## Verification scope

Emulator mode keeps the real Firebase Auth, Firestore, Functions, and Storage
SDKs connected to the local Emulator Suite. FCM token acquisition, push
permission requests, and notification-open events are disabled in this mode;
message-document writes still use Firestore. The startup path also skips the
external service initialization used by the production application.

These tests establish only the exercised emulator-backed behavior. They do not
verify production sign-in providers, App Check, APNs/FCM delivery, Branch links,
or RevenueCat billing. A successful artifact build or installation alone does
not establish successful operation on a simulator or device.

For local debugging, run one target with `--verbose`, inspect
`firebase-debug.log`, and use `patrol develop` when iterating on selectors.

Android uses Patrol's instrumentation runner and Test Orchestrator. Tests are
isolated by clearing app data between runs. The configured package and bundle
identifiers target the development application.
