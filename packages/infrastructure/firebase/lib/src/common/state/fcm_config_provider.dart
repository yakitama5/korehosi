import 'package:fcm_config/fcm_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm_config_provider.g.dart';

@riverpod
FCMConfig fcmConfig(Ref ref) => FCMConfig.instance;
