import 'package:infrastructure_firebase/common.dart';
import 'package:packages_domain/core.dart';

final class InfrastructureInitializer {
  InfrastructureInitializer._();

  static Future<void> initialize(Flavor flavor, String recpthaSiteKey) async {
    // Firebase
    await FirebaseInitializer.initialize(flavor, recpthaSiteKey);
  }
}
