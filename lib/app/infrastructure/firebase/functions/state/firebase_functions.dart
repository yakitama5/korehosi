import 'package:cloud_functions/cloud_functions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/firebase_config.dart';

part 'firebase_functions.g.dart';

/// Firebase Functions
/// テスト時にDIすることを考慮して、Providerとして定義
@riverpod
FirebaseFunctions firebaseFunctions(FirebaseFunctionsRef ref) =>
    FirebaseFunctions.instanceFor(region: firebaseRegion);
