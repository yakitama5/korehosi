import 'package:family_wish_list/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../application/usecase/user/user_usecase.dart';
import '../../components/importer.dart';
import '../../hooks/src/use_l10n.dart';
import '../../theme/importer.dart';
import '../presentation_mixin.dart';

class AccountLinkPage extends HookWidget {
  const AccountLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.accountLink)),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ExpandWidthContainer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _Image(),
                  Gap(40),
                  _Caption(),
                  Gap(40),
                  _GoogleSignInButton(),
                  Gap(8),
                  _AppleSignInButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Image extends HookWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ConstrainedMobileBox(
      child: ImageAspectRatio(
        child: SvgAssetImage(
          path: Assets.images.accountLink,
          replaceColors: svgReplaceColorsPrimary
              .map((c) => (c, colorScheme.primary))
              .toList(),
        ),
      ),
    );
  }
}

class _Caption extends HookWidget {
  const _Caption();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = useL10n();

    return ExpandWidthContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.accountLinkDescTitle,
            style: textTheme.titleMedium,
          ),
          const Gap(16),
          ItemizedText([
            Text(l10n.accountLinkDescBodyCloudBackup),
            Text(l10n.accountLinkDescBodyMultiDevice),
            Text(l10n.accountLinkDescBodyDataSend),
          ]),
        ],
      ),
    );
  }
}

class _GoogleSignInButton extends HookConsumerWidget with PresentationMixin {
  const _GoogleSignInButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return ConstrainedTabletBox(
      child: ExpandWidthContainer(
        child: OutlinedButton.icon(
          onPressed: () => onSignInWithGoogle(context, ref),
          icon: const GoogleIcon(),
          label: Text(l10n.signInWithGoogle),
        ),
      ),
    );
  }

  void onSignInWithGoogle(BuildContext context, WidgetRef ref) {
    execute(
      context,
      action: () => ref.read(userUsecaseProvider).signInWithGoogle(),
    );
  }
}

class _AppleSignInButton extends HookConsumerWidget with PresentationMixin {
  const _AppleSignInButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = useL10n();

    return ConstrainedTabletBox(
      child: ExpandWidthContainer(
        child: OutlinedButton.icon(
          onPressed: () => _onSignInWithApple(context, ref),
          icon: Icon(
            MdiIcons.apple,
            color: colorScheme.onBackground,
          ),
          label: Text(l10n.signInWithApple),
        ),
      ),
    );
  }

  void _onSignInWithApple(BuildContext context, WidgetRef ref) {
    execute(
      context,
      action: () => ref.read(userUsecaseProvider).signInWithApple(),
    );
  }
}
