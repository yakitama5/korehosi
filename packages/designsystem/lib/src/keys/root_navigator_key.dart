import 'package:flutter/widgets.dart';

/// ナビゲーション関連のルートキー
/// 共通機能からのダイアログ表示などで、画面によらず表示させるために利用するため、共通定義
final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
