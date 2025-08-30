import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics.g.dart';

/// Firebase Analytics
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
FirebaseAnalytics analytics(Ref ref) => FirebaseAnalytics.instance;
