import 'package:flutter/material.dart';
import 'package:flutter_app/gen/assets.gen.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_designsystem/widgets.dart';

class AccountLinkPage extends HookWidget {
  const AccountLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(i18n.settings.accountLinkPage.title)),
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
              .map(
                (c) =>
                    SvgReplaceColors(rawColor: c, color: colorScheme.primary),
              )
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
    final messages = i18n.settings.accountLinkPage.meritDescription;

    return ExpandWidthContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(messages.title, style: textTheme.titleMedium),
          const Gap(16),
          ItemizedText(messages.itemizedMessages.map(Text.new).toList()),
        ],
      ),
    );
  }
}

class _GoogleSignInButton extends HookConsumerWidget with PresentationMixin {
  const _GoogleSignInButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedTabletBox(
      child: ExpandWidthContainer(
        child: OutlinedButton.icon(
          onPressed: () => onSignInWithGoogle(context, ref),
          icon: const GoogleIcon(),
          label: Text(i18n.settings.accountLinkPage.signInWithGoogle),
        ),
      ),
    );
  }

  void onSignInWithGoogle(BuildContext context, WidgetRef ref) {
    execute(action: () => ref.read(userUsecaseProvider).signInWithGoogle());
  }
}

class _AppleSignInButton extends HookConsumerWidget with PresentationMixin {
  const _AppleSignInButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return ConstrainedTabletBox(
      child: ExpandWidthContainer(
        child: OutlinedButton.icon(
          onPressed: () => _onSignInWithApple(context, ref),
          icon: Icon(MdiIcons.apple, color: colorScheme.onSurface),
          label: Text(i18n.settings.accountLinkPage.signInWithApple),
        ),
      ),
    );
  }

  void _onSignInWithApple(BuildContext context, WidgetRef ref) {
    execute(action: () => ref.read(userUsecaseProvider).signInWithApple());
  }
}
