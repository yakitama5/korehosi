import 'package:family_wish_list/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nested/nested.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/model/user/user_form_model.dart';
import '../../../application/usecase/user/user_usecase.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../components/importer.dart';
import '../../hooks/use_l10n.dart';
import '../../theme/importer.dart';
import '../presentation_mixin.dart';
import 'components/age_group_field.dart';
import 'components/user_name_field.dart';

class OnboardFormPage extends HookConsumerWidget with PresentationMixin {
  OnboardFormPage({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const model = UserFormModel();
    final l10n = useL10n();

    return UserFormModelFormBuilder(
      model: model,
      builder: (context, formModel, _) => Scaffold(
        body: Nested(
          children: const [
            UnfocusOnTap(),
            PagePadding(),
          ],
          child: IntroductionScreen(
            key: introKey,
            pages: [
              _createStartPageVM(context),
              _createProfilePageVM(context),
              _createConfirmPageVM(context, ref),
            ],
            freeze: true,
            showBackButton: true,
            back: Text(l10n.back),
            next: Text(l10n.next),
            done: Text(l10n.start),
            onDone: () => _onDone(context, ref),
            safeAreaList: const [true, true, true, true],
          ),
        ),
      ),
    );
  }

  PageViewModel _createStartPageVM(BuildContext context) {
    final l10n = L10n.of(context)!;

    return _createPageVM(
      context,
      imagePath: Assets.images.onboardGift,
      title: l10n.onboardStartTitle,
      children: [
        Text(l10n.onboardStartMessage),
        const Gap(16),
        _FormFilledButton(
          onPressed: () => introKey.currentState?.next(),
          label: l10n.next,
        ),
      ],
    );
  }

  PageViewModel _createProfilePageVM(BuildContext context) {
    final l10n = L10n.of(context)!;

    return _createPageVM(
      context,
      imagePath: Assets.images.onboardProfile,
      title: l10n.questionAgeGroup,
      children: [
        const UserNameField(),
        const Gap(8),
        const AgeGroupField(),
        const Gap(32),
        _FormFilledButton(
          onPressed: () => introKey.currentState?.next(),
          label: l10n.next,
        ),
      ],
    );
  }

  PageViewModel _createConfirmPageVM(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;
    final formModel = ReactiveUserFormModelForm.of(context)!;

    return _createPageVM(
      context,
      imagePath: Assets.images.onboardDone,
      titleWidget: const SizedBox.shrink(),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReactiveValueListenableBuilder<AgeGroup>(
          formControl: formModel.ageGroupControl,
          builder: (context, control, child) => TextWithLabel(
            control.value?.getLocaleName(l10n),
            label: l10n.ageGroup,
          ),
        ),
        const Gap(8),
        ReactiveValueListenableBuilder<String>(
          formControl: formModel.nameControl,
          builder: (context, control, child) =>
              TextWithLabel(control.value, label: l10n.name),
        ),
        const Gap(8),
        _FormFilledButton(
          onPressed: () => _onDone(context, ref),
          label: l10n.start,
        ),
      ],
    );
  }

  PageViewModel _createPageVM(
    BuildContext context, {
    required String imagePath,
    String? title,
    Widget? titleWidget,
    required List<Widget> children,
    CrossAxisAlignment? crossAxisAlignment,
  }) {
    final colorScheme = context.colorScheme;
    final replaceColors = [
      ...svgReplaceColorsPrimary.map((c) => (c, colorScheme.primary)),
      ...svgReplaceColorsPrimaryContainer
          .map((c) => (c, colorScheme.primaryContainer)),
    ];

    return PageViewModel(
      // 画像部分とForm部分の表示率は全て共通定義
      decoration: const PageDecoration(bodyFlex: 3, imageFlex: 2),
      image: SvgAssetImage(
        path: imagePath,
        replaceColors: replaceColors,
      ),
      title: title,
      titleWidget: titleWidget,
      bodyWidget: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }

  Future<void> _onDone(BuildContext context, WidgetRef ref) async {
    return execute(
      context,
      // 画面遷移はリダイレクト処理で行う
      action: () async {
        // 画面の入力内容を取得
        final formModel = ReactiveUserFormModelForm.of(context)!;
        final name = formModel.nameControl?.value;
        final ageGroup = formModel.ageGroupControl.value;

        // 登録
        await ref.read(userUsecaseProvider).signUp(
              name: name,
              ageGroup: ageGroup!,
            );
      },
    );
  }
}

class _FormFilledButton extends StatelessWidget {
  const _FormFilledButton({this.onPressed, required this.label});

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ExpandWidthContainer(
      child: FilledButton.tonal(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
