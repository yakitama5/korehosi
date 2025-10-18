import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_shared_preferences/common.dart';
import 'package:infrastructure_shared_preferences/src/common/enum/preferences.dart';
import 'package:intl/intl.dart';
import 'package:packages_core/extension.dart';
import 'package:packages_domain/src/designsystem/value_object/view_layout.dart';
import 'package:packages_domain/user.dart';

/// FCMトークンタイムスタンプの日付形式
const _tokenTimestampFormat = 'yyyy-MM-dd';

/// `shared_preference`パッケージを利用したサービスの実装
class SharedPreferenceUserSessionRepository implements UserSessionRepository {
  const SharedPreferenceUserSessionRepository(this.ref);

  final Ref ref;

  @override
  String? fetchCurrentGroupId() =>
      ref.watch(stringPreferenceProvider(Preferences.curentGroup));

  @override
  Future<void> setCurrentGroupId({required String groupId}) => ref
      .watch(stringPreferenceProvider(Preferences.curentGroup).notifier)
      .update(groupId);

  @override
  Future<void> removeCurrentGroupId() => ref
      .watch(stringPreferenceProvider(Preferences.curentGroup).notifier)
      .remove();

  @override
  DateTime? fetchTokenTimestamp({required String uid}) {
    final str = ref.watch(
      stringWithStringFamilyPreferenceProvider(Preferences.curentGroup, uid),
    );
    final formatter = DateFormat(_tokenTimestampFormat);
    return formatter.parse(str);
  }

  @override
  Future<void> updateTokenTimestamp({
    required String uid,
    required DateTime dateTime,
  }) {
    final formatter = DateFormat(_tokenTimestampFormat);
    return ref
        .watch(
          stringWithStringFamilyPreferenceProvider(
            Preferences.curentGroup,
            uid,
          ).notifier,
        )
        .update(formatter.format(dateTime));
  }

  @override
  Future<void> removeTokenTimestamp({
    required String uid,
    required DateTime dateTime,
  }) async {
    return ref
        .watch(
          stringWithStringFamilyPreferenceProvider(
            Preferences.curentGroup,
            uid,
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
