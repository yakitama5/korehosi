import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import '../../../application/model/user/user_form_model.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../application/usecase/user/user_usecase.dart';
import '../../components/importer.dart';
import '../../hooks/src/use_l10n.dart';
import '../error/components/error_view.dart';
import '../presentation_mixin.dart';
import 'components/age_group_field.dart';
import 'components/user_name_field.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authUserProvider);

    return user.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: (data) => data == null
          ? const CircularProgressIndicator()
          : UserFormModelFormBuilder(
              model: UserFormModel(
                name: data.name,
                ageGroup: data.ageGroup,
              ),
              builder: (context, formModel, child) => const _Form(),
            ),
      error: ErrorView.new,
      loading: CircularProgressIndicator.new,
    );
  }
}

class _Form extends HookWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return Nested(
      children: const [
        ReactiveFormDirtyConfirmPopScope(),
        UnfocusOnTap(),
      ],
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
    final l10n = useL10n();

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
        final formModel = ReactiveUserFormModelForm.of(context)!;
        final name = formModel.nameControl?.value;
        final ageGroup = formModel.ageGroupControl.value!;

        // 登録
        await ref.read(userUsecaseProvider).update(
              name: name,
              ageGroup: ageGroup,
            );

        // 遷移元へ
        if (context.mounted) {
          context.pop();
        }
      },
    );
  }
}
