# Firebase Functions and Security Rules

The Firebase checks require Node.js 22.22.2 or later in the Node.js 22 line,
and Java 21 or later. Run all commands
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
npx --yes firebase-tools@15.34.2 emulators:exec \
  --project demo-korehosi \
  --only firestore,storage \
  "npm run test:rules --prefix functions"
```

The same commands run in `.github/workflows/firebase_test.yaml` whenever a
pull request or a push to `main` changes Firebase Rules, configuration, or
files under `functions/`.

Dependency overrides keep transitive packages on patched releases until the
upstream Firebase, ESLint, and Mocha dependencies adopt them:

- `@grpc/grpc-js` 1.14.7 replaces the Firebase JS SDK's pinned 1.9.x version
  ([GHSA-m9gg-hp2v-232j](https://github.com/advisories/GHSA-m9gg-hp2v-232j),
  [additional gRPC advisory](https://github.com/advisories/GHSA-f596-whhp-79r4)).
- `glob` 14.0.3 and `minimatch` 11.0.4 fix traversal and denial-of-service issues
  ([GHSA-3g3m-2fjr-6pw4](https://github.com/advisories/GHSA-3g3m-2fjr-6pw4),
  [GHSA-g3hv-75wg-m249](https://github.com/advisories/GHSA-g3hv-75wg-m249)).

Review these overrides when updating dependencies, and remove them once the
upstream dependency ranges include patched versions.
Also run `npm audit --prefix functions` with the checks above.
