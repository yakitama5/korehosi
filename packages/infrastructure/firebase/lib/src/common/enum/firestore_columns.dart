enum FirestoreColumns {
  updatedAt('updatedAt'),
  createdAt('createdAt');

  const FirestoreColumns(this.fieldName);

  final String fieldName;
}
