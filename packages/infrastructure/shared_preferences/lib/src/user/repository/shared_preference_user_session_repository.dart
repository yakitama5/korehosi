import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_shared_preferences/common.dart';
import 'package:infrastructure_shared_preferences/src/common/enum/preferences.dart';
import 'package:intl/intl.dart';
import 'package:packages_core/extension.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

/// FCMトークンタイムスタンプの日付形式
const _tokenTimestampFormat = 'yyyy-MM-dd';

/// `shared_preference`パッケージを利用したサービスの実装
class SharedPreferenceUserSessionRepository implements UserSessionRepository {
  const SharedPreferenceUserSessionRepository(this.ref);

  final Ref ref;

  @override
  GroupId? fetchCurrentGroupId() {
    final value = ref.watch(stringPreferenceProvider(Preferences.curentGroup));

    // 未設定の場合はNULLを返却
    if (value == Preferences.curentGroup.defaultValue) {
      return null;
    }

    return GroupId(value);
  }

  @override
  Future<void> setCurrentGroupId({required GroupId groupId}) => ref
      .watch(stringPreferenceProvider(Preferences.curentGroup).notifier)
      .update(groupId.value);

  @override
  Future<void> removeCurrentGroupId() => ref
      .watch(stringPreferenceProvider(Preferences.curentGroup).notifier)
      .remove();

  @override
  DateTime? fetchTokenTimestamp({required UserId userId}) {
    final str = ref.watch(
      stringWithStringFamilyPreferenceProvider(
        Preferences.curentGroup,
        userId.value,
      ),
    );
    final formatter = DateFormat(_tokenTimestampFormat);
    return formatter.parse(str);
  }

  @override
  Future<void> updateTokenTimestamp({
    required UserId userId,
    required DateTime dateTime,
  }) {
    final formatter = DateFormat(_tokenTimestampFormat);
    return ref
        .watch(
          stringWithStringFamilyPreferenceProvider(
            Preferences.curentGroup,
            userId.value,
          ).notifier,
        )
        .update(formatter.format(dateTime));
  }

  @override
  Future<void> removeTokenTimestamp({
    required UserId userId,
    required DateTime dateTime,
  }) async {
    return ref
        .watch(
          stringWithStringFamilyPreferenceProvider(
            Preferences.curentGroup,
            userId.value,
          ).notifier,
        )
        .remove();
  }

  @override
  ViewLayout? fetchItemsPageViewLayout() {
    final prefValue = ref.watch(
      stringPreferenceProvider(Preferences.itemsViewLayout),
    );
    if (prefValue.isEmpty) {
      return null;
    }

    return ViewLayout.values.byNameOrNull(prefValue);
  }

  @override
  Future<void> updateItemsPageViewLayout({required ViewLayout viewLayout}) {
    return ref
        .watch(stringPreferenceProvider(Preferences.itemsViewLayout).notifier)
        .update(viewLayout.name);
  }
}
