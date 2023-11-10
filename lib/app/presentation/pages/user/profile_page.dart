import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/config/user_config.dart';
import '../../../application/model/dialog_result.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/user/state/user_form_provider.dart';
import '../../../application/usecase/user/user_usecase.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../components/importer.dart';
import '../presentation_mixin.dart';
import 'components/age_group_field.dart';
import 'components/user_name_field.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final asyncForm = ref.watch(userFormProvider);

    return asyncForm.maybeWhen(
      orElse: SizedBox.shrink,
      data: (form) {
        return ReactiveForm(
          formGroup: form,
          onWillPop: () async {
            // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら変更する
            /// https://github.com/flutter/flutter/issues/112196
            /// NavigationBarを検知出来ないのは一旦保留

            if (!form.dirty) {
              // 内容が変更されていなければ閉じる
              return true;
            }

            // ダイアログを表示して確認
            final result = await showAdaptiveOkCancelDialog(
              context,
              title: l10n.confirmDiscardChangesTitle,
              message: l10n.confirmDiscardChangesMessage,
              okLabel: l10n.discard,
              cancelLabel: l10n.notDiscard,
            );

            // 破棄が選ばれたら画面を閉じる
            if (result == DialogResult.ok) {
              return true;
            }
            return false;
          },
          child: const _Form(),
        );
      },
    );
  }
}

class _Form extends HookConsumerWidget {
  const _Form();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return UnfocusOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.profile),
          actions: const [
            _SaveButton(),
          ],
        ),
        body: const SingleChildScrollView(
          child: PagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserNameField(),
                Gap(16),
                AgeGroupField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SaveButton extends HookConsumerWidget with PresentationMixin {
  const _SaveButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilledButton(
        onPressed: () => onSave(context, ref),
        child: Text(l10n.save),
      ),
    );
  }

  Future<void> onSave(BuildContext context, WidgetRef ref) async {
    await execute(
      context,
      action: () async {
        // 画面の入力内容を取得
        final form = await ref.read(userFormProvider.future);
        final name = form.controls[userConfig.nameKey]?.value as String?;
        final ageGroup =
            form.controls[userConfig.ageGroupKey]?.value as AgeGroup?;

        // 登録
        await ref.read(userUsecaseProvider).update(
              name: name,
              ageGroup: ageGroup!,
            );

        // 遷移元へ
        if (context.mounted) {
          context.pop();
        }
      },
    );
  }
}
