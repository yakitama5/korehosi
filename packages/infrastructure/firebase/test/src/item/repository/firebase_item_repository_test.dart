import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/item/repository/firebase_item_repository.dart';

void main() {
  group('compareWishDates', () {
    final earlier = DateTime(2026, 7, 15);
    final later = DateTime(2026, 8);

    test('sorts dates in the selected direction', () {
      expect(compareWishDates(earlier, later, descending: false), isNegative);
      expect(compareWishDates(earlier, later, descending: true), isPositive);
    });

    test('keeps items without a date at the end', () {
      expect(compareWishDates(null, later, descending: false), isPositive);
      expect(compareWishDates(null, later, descending: true), isPositive);
      expect(compareWishDates(earlier, null, descending: false), isNegative);
    });
  });
}
