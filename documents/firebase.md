# Firebase development

Firebase client configuration contains project identifiers and restricted API
keys, not server credentials. The reproducible client configuration is kept in
Git, while credentials that grant administrative access remain ignored.

## Tracked configuration

- `.firebaserc`, `firebase.json`, Firestore indexes and security rules
- `apps/app/firebase.json` (FlutterFire build-configuration mapping)
- flavor-specific Android and iOS service files under `apps/app`
- flavor-specific `firebase_options*.dart` under the Firebase infrastructure
  package

Do not commit service-account JSON, App Check debug tokens, `.env` files,
`dart_defines`, signing material, or generated service-file copies in the
Android/iOS build output locations.

## Regenerate FlutterFire configuration

Install the current CLI and authenticate first:

```sh
dart pub global activate flutterfire_cli
firebase login --reauth
```

Run both commands from `apps/app`. Running dev followed by prod produces the
combined `firebase.json` mapping used by the iOS build phase.

```sh
flutterfire configure \
  --project=family-wish-list-ad3c7-dev \
  --platforms=android,ios,web \
  --android-package-name=com.yakuran.family_wish_list.dev \
  --ios-bundle-id=com.yakuran.familyWishList.dev \
  --ios-build-config=Debug \
  --out=../../packages/infrastructure/firebase/lib/src/common/config/firebase_options_dev.dart \
  --android-out=android/app/src/dev/res/google-services.json \
  --ios-out=ios/dev/GoogleService-Info.plist \
  --yes --overwrite-firebase-options

flutterfire configure \
  --project=family-wish-list-ad3c7 \
  --platforms=android,ios,web \
  --android-package-name=com.yakuran.family_wish_list \
  --ios-bundle-id=com.yakuran.familyWishList \
  --ios-build-config=Release \
  --out=../../packages/infrastructure/firebase/lib/src/common/config/firebase_options.dart \
  --android-out=android/app/src/prod/res/google-services.json \
  --ios-out=ios/prod/GoogleService-Info.plist \
  --yes --overwrite-firebase-options
```

## Local emulators

The default Firebase project alias is the development project. Start the local
services from the repository root:

```sh
firebase emulators:start --only auth,firestore,storage,functions
```

Use the explicit alias for any deploy operation:

```sh
firebase deploy --project dev
firebase deploy --project prod
```
