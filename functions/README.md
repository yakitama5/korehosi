# Firebase Functions and Security Rules

The Firebase checks require Node.js 22 and Java 21 or later. Run all commands
from the repository root.

Install the locked dependencies:

```sh
npm ci --prefix functions
```

Run Functions lint and unit tests:

```sh
npm run lint --prefix functions
npm run test:functions --prefix functions
```

Run the Firestore and Storage Security Rules tests against local emulators:

```sh
npx --yes firebase-tools@15.20.0 emulators:exec \
  --project demo-korehosi \
  --only firestore,storage \
  "npm run test:rules --prefix functions"
```

The same commands run in `.github/workflows/firebase_test.yaml` whenever a
pull request or a push to `main` changes Firebase Rules, configuration, or
files under `functions/`.
