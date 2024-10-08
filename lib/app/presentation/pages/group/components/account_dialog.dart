import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/usecase/group/state/current_group_provider.dart';
import '../../../../application/usecase/group/state/join_groups_provider.dart';
import '../../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../../domain/user/entity/user.dart';
import '../../../../domain/user/value_object/age_group.dart';
import '../../../hooks/importer.dart';
import '../../../routes/importer.dart';
import 'premium_icon_container.dart';

Future<String?> showAdaptiveAccountDialog(
  BuildContext context, {
  String? title,
  String? okLabel,
  String? cancelLabel,
  String? initial,
  String? labelText,
  int? maxLength,
}) =>
    showDialog(
      context: context,
      // TODO(yakitama5): iOS版を用意 (アダプティブ対応)
      builder: (context) => const AndroidAccountDialog(),
    );

class AndroidAccountDialog extends HookConsumerWidget {
  const AndroidAccountDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final textTheme = useTextTheme();
    final colorScheme = useColorScheme();

    final asyncGroups = ref.watch(joinGroupsProvider);
    final user = ref.watch(authUserProvider).value;
    final selectValue = useState(
      ref.watch(currentGroupProvider.select((data) => data.value?.id)),
    );

    return asyncGroups.maybeWhen(
      data: (groups) => AlertDialog(
        icon: const Icon(Icons.account_circle),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user.dispName(l10n)),
                const Gap(8),
                IconButton(
                  onPressed: () {
                    const ProfileRouteData().go(context);
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.edit,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  tooltip: l10n.edit,
                ),
              ],
            ),
            Text(
              user?.ageGroup.getLocaleName(l10n) ?? '',
              style: textTheme.bodyMedium
                  ?.copyWith(color: colorScheme.onSurfaceVariant),
            ),
          ],
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 240, maxWidth: 400),
          child: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
              itemCount: groups?.length ?? 0,
              itemBuilder: (context, i) {
                final group = groups![i];
                return RadioListTile<String>(
                  title: PremiumPrefixContainer(
                    premium: group.premium,
                    child: Text(group.name),
                  ),
                  value: group.id,
                  groupValue: selectValue.value,
                  onChanged: (String? value) {
                    selectValue.value = value;
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: selectValue.value == null
                ? null
                : () => Navigator.pop(context, selectValue.value),
            child: Text(l10n.ok),
          ),
        ],
      ),
      // 一瞬なので何も表示しない
      orElse: Container.new,
    );
  }
}
