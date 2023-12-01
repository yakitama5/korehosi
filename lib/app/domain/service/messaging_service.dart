import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'messaging_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
MessagingService messagingService(MessagingServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

abstract class MessagingService {
  Future<void> requestPermission();
  Future<String?> getToken();
}
