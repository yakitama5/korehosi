import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// TODO(yakitama5): 説明分などを適正化すること
const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Notifications',
  description: 'This channel is used for important notifications.',
  importance: Importance.max,
);
