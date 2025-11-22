import 'package:infrastructure_branch/common.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:infrastructure_revenue_cat/common.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/notification.dart';

typedef InfrastructureInitializedValues = ({
  NotificationMessage? initialMessage,
});

final class InfrastructureInitializer {
  InfrastructureInitializer._();

  static Future<InfrastructureInitializedValues> initialize({
    required Flavor flavor,
    required bool isWeb,
  }) async {
    // Firebase
    final firebaseResult = await FirebaseInitializer.initialize(flavor);

    // branch (deep link)
    await BranchInitializer.initialize();

    // RevenueCat
    await RevenueCatInitializer.initialize(flavor, isWeb: isWeb);

    return (initialMessage: firebaseResult.initialMessage);
  }
}
