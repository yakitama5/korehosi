import 'package:infrastructure_branch/common.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:infrastructure_revenue_cat/common.dart';
import 'package:packages_domain/core.dart';

final class InfrastructureInitializer {
  InfrastructureInitializer._();

  static Future<void> initialize({
    required Flavor flavor,
    required bool isWeb,
  }) async {
    // Firebase
    await FirebaseInitializer.initialize(flavor);

    // branch (deep link)
    await BranchInitializer.initialize();

    // RevenueCat
    await RevenueCatInitializer.initialize(flavor, isWeb: isWeb);
  }
}
