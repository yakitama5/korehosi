import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_domain/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wish_reminder_settings_provider.g.dart';

@riverpod
Stream<WishReminderSettings> wishReminderSettings(Ref ref) async* {
  final user = await ref.watch(authUserProvider.future);
  if (user == null) {
    yield const WishReminderSettings();
    return;
  }
  yield* ref
      .watch(notificationTokenRepositoryProvider)
      .watchWishReminderSettings(userId: user.id);
}
