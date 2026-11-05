# Local patch to fcm_config 3.6.5

Source: https://pub.dev/packages/fcm_config/versions/3.6.5
Upstream: https://github.com/mu-dawood/fcm_config
License: Apache-2.0; the original LICENSE, README, and CHANGELOG are retained.

`lib/src/notification_manger.dart` imports the IO handler directly as well as
`notifications_handler.dart`, which conditionally exports the IO or Web handler.
On a Dart JavaScript build this makes `PlatformNotificationHandler` ambiguous.
The local patch removes the unconditional IO import so the existing conditional
export chooses the handler. No notification behavior or public API changes.

Upstream master was checked at commit
`b547e4fd9aeb1954a715f3805f9f9dd0a47732ee` and still contains this import.
Remove this vendor override after an upstream release fixes the import and its
Firebase dependency constraints permit the application's selected SDK versions.
