import 'package:family_wish_list/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../application/config/url_config.dart';
import '../../components/importer.dart';
import '../../hooks/use_l10n.dart';
import '../../routes/importer.dart';
import '../../theme/importer.dart';

class OnboardStartPage extends HookWidget {
  const OnboardStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(yakitama5): 初期画面に戻れるようにするべき
    return const Scaffold(
      body: SafeArea(
        child: PagePadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _WelcomeImage(),
                Gap(16),
                _StartButton(),
                Gap(28),
                _AccountLinkButton(),
                Gap(16),
                _Links(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WelcomeImage extends StatelessWidget {
  const _WelcomeImage();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ConstrainedMobileBox(
      child: ImageAspectRatio(
        child: SvgAssetImage(
          path: Assets.images.onboardDone,
          replaceColors: svgReplaceColorsPrimary
              .map((c) => (c, colorScheme.primary))
              .toList(),
        ),
      ),
    );
  }
}

class _StartButton extends HookWidget {
  const _StartButton();

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        ConstrainedTabletBox(
          child: ExpandWidthContainer(
            child: FilledButton(
              onPressed: () => onStart(context),
              child: Text(l10n.start),
            ),
          ),
        ),
        Text(
          l10n.firstTime,
          style: textTheme.labelMedium
              ?.copyWith(color: colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }

  void onStart(BuildContext context) {
    const OnboardFormRouteData().go(context);
  }
}

class _AccountLinkButton extends HookWidget {
  const _AccountLinkButton();
  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return ConstrainedTabletBox(
      child: ExpandWidthContainer(
        child: OutlinedButton(
          onPressed: () => onAccountLink(context),
          child: Text(l10n.accountLink),
        ),
      ),
    );
  }

  void onAccountLink(BuildContext context) {
    const AccountLinkRouteData().go(context);
  }
}

class _Links extends HookWidget {
  const _Links();

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return Column(
      children: [
        UrlLink(url: urlConfig.howToUse, label: l10n.howToUse),
        const Gap(32),
        ExpandWidthContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: UrlLink(url: urlConfig.contactUs, label: l10n.contactUs),
              ),
              Flexible(
                child: UrlLink(
                  url: urlConfig.privacyPolicyJa,
                  label: l10n.privacyPolicy,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
