# End-to-end tests

Patrol drives the Flutter UI and native platform UI. Install the CLI version
compatible with the `patrol` package before running the suite:

```sh
dart pub global activate patrol_cli
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

Android uses Patrol's instrumentation runner and Test Orchestrator. Tests are
isolated by clearing app data between runs. The configured package and bundle
identifiers target the development application.
