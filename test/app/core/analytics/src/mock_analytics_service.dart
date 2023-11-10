import 'package:family_wish_list/app/domain/service/analytics_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MockAnalyticsService implements AnalyticsService {
  const MockAnalyticsService(this.ref);

  final Ref ref;

  @override
  Future<void> screenView({required String screenName}) async {
    // do nothing
  }

  @override
  Future<void> signedIn() async {
    // do nothing
  }

  @override
  Future<void> signedUp() async {
    // do nothing
  }
}
