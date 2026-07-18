# End-to-end tests

Patrol drives the Flutter UI and native platform UI. Install the CLI version
compatible with the `patrol` package before running the suite:

```sh
dart pub global activate patrol_cli 4.5.1
patrol doctor
```

Run tests from `apps/app`. The smoke test boots the development app, so provide
the development compile-time configuration:

```sh
patrol test \
  --target patrol_test/app_smoke_test.dart \
  --dart-define-from-file dart_defines/dev.json
```

To use Firebase Emulator Suite at the same time, start it from the repository
root and add the emulator flag:

```sh
patrol test \
  --target patrol_test/app_smoke_test.dart \
  --dart-define-from-file dart_defines/dev.json \
  --dart-define useFirebaseEmulators=true
```

The repeatable critical-path suite resets the Auth and Firestore emulators,
then covers anonymous onboarding and item create/edit/delete:

```sh
firebase emulators:start --project family-wish-list-ad3c7-dev \
  --only auth,firestore,functions,storage

cd apps/app
patrol test \
  --target patrol_test/critical_flow_test.dart \
  --uninstall --full-isolation \
  --dart-define-from-file dart_defines/dev.json \
  --dart-define useFirebaseEmulators=true
```

Do not point `critical_flow_test.dart` at a real Firebase project: it deletes
emulator data at startup to keep test runs independent. Android also needs
`--dart-define firebaseEmulatorHost=10.0.2.2` when the test host is not inferred.

The `Patrol E2E` GitHub Actions workflow runs the iOS critical path for relevant
pull requests and can be started manually. Its weekday schedule runs both iOS
and Android. On every run it uploads Patrol and Firebase Emulator logs; on iOS
failure it also captures the current simulator screen.

For local debugging, run one target with `--verbose`, inspect
`firebase-debug.log`, and use `patrol develop` when iterating on selectors.

Android uses Patrol's instrumentation runner and Test Orchestrator. Tests are
isolated by clearing app data between runs. The configured package and bundle
identifiers target the development application.
