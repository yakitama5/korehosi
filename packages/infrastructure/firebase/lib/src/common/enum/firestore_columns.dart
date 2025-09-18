enum FirestoreColumns {
  updatedAt('updated_at'),
  createdAt('created_at');

  const FirestoreColumns(this.fieldName);

  final String fieldName;
}
