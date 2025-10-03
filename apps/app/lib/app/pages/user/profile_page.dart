import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/importer.dart';
import 'package:flutter_app/app/pages/error/components/error_view.dart';
import 'package:flutter_app/app/pages/presentation_mixin.dart';
import 'package:flutter_app/app/pages/user/components/age_group_field.dart';
import 'package:flutter_app/app/pages/user/components/user_name_field.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/user.dart';

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
              model: UserFormModel(name: data.name, ageGroup: data.ageGroup),
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
    return Nested(
      children: const [ReactiveFormDirtyConfirmPopScope(), UnfocusOnTap()],
      child: Scaffold(
        appBar: AppBar(
          title: Text(i18n.app.profile),
          actions: const [_SaveButton()],
        ),
        body: const SingleChildScrollView(
          child: PagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [UserNameField(), Gap(16), AgeGroupField()],
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
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilledButton(
        onPressed: () => onSave(context, ref),
        child: Text(i18n.app.save),
      ),
    );
  }

  Future<void> onSave(BuildContext context, WidgetRef ref) async {
    await execute(
      context,
      action: () async {
        // 画面の入力内容を取得
        final formModel = ReactiveUserFormModelForm.of(context)!;
        final name = formModel.nameControl.value;
        final ageGroup = formModel.ageGroupControl.value;

        final navigator = Navigator.of(context);

        // 登録
        await ref
            .read(userUsecaseProvider)
            .update(name: name, ageGroup: ageGroup!);

        // 遷移元へ
        navigator.pop();
      },
    );
  }
}
