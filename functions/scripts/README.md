# Firestore data migrations

`migrate-firestore-data.js` performs the one-time cleanup for historical
`purchasePlan;` item statuses and duplicate `buyerNames` / `wanterNames`.
Suggestion names are compared after NFKC normalization, trimming, whitespace
collapse, and lowercasing. The retained document uses the normalized name's
SHA-256 as its deterministic ID.

Use Application Default Credentials for the target Firebase project. The
command is a dry run unless `--apply` is explicitly supplied.

```sh
cd functions
GOOGLE_CLOUD_PROJECT=your-project-id npm run migrate:data
GOOGLE_CLOUD_PROJECT=your-project-id npm run migrate:data:apply
```

Always review the project ID, mode, and operation counts from the dry run
before applying. Re-running the apply command is safe: status corrections and
deterministic suggestion writes are idempotent.
