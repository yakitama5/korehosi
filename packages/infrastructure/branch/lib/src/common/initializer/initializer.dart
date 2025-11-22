import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';

final class BranchInitializer {
  BranchInitializer._();

  static Future<void> initialize() async {
    await FlutterBranchSdk.init(
      enableLogging: true,
      branchAttributionLevel: BranchAttributionLevel.FULL,
    );
    FlutterBranchSdk.setConsumerProtectionAttributionLevel(
      BranchAttributionLevel.FULL,
    );
  }
}
