import 'package:cores_domain/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../analytics/state/analytics.dart';

/// Firebaseを利用したサービスの実装
class FirebaseAnalyticsService implements AnalyticsService {
  const FirebaseAnalyticsService(this.ref);

  final Ref ref;

  @override
  Future<void> screenView({required String screenName}) =>
      ref.read(analyticsProvider).logScreenView(screenName: screenName);

  @override
  Future<void> signedIn() => ref.read(analyticsProvider).logLogin();

  @override
  Future<void> signedUp() =>
      // サインアップの手順は考慮不要なので適当に設定
      ref.read(analyticsProvider).logSignUp(signUpMethod: 'Other');
}
