// Query is sealed for production implementations; this test double only records
// the filter passed by the repository helper.
// ignore_for_file: must_be_immutable, subtype_of_sealed_class

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/analyze/repository/firebase_analyze_repository.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_purchase_model.dart';

class _RecordingPurchaseQuery implements Query<FirestorePurchaseModel> {
  Object? field;
  bool? isNull;

  @override
  Query<FirestorePurchaseModel> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    Iterable<Object?>? arrayContainsAny,
    Iterable<Object?>? whereIn,
    Iterable<Object?>? whereNotIn,
    bool? isNull,
  }) {
    this.field = field;
    this.isNull = isNull;
    return this;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  test('purchasedOnly filters out purchases without a sent date', () {
    final query = _RecordingPurchaseQuery();

    expect(purchasedOnly(query), same(query));
    expect(query.field, 'sentAt');
    expect(query.isNull, isFalse);
  });
}
