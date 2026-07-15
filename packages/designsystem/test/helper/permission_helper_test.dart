import 'package:flutter_test/flutter_test.dart';
import 'package:packages_designsystem/helper.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  group('isPermissionGranted', () {
    test('accepts full and limited photo access', () {
      expect(isPermissionGranted(PermissionStatus.granted), isTrue);
      expect(isPermissionGranted(PermissionStatus.limited), isTrue);
    });

    test('rejects unavailable permission statuses', () {
      expect(isPermissionGranted(PermissionStatus.denied), isFalse);
      expect(isPermissionGranted(PermissionStatus.permanentlyDenied), isFalse);
      expect(isPermissionGranted(PermissionStatus.restricted), isFalse);
    });
  });
}
