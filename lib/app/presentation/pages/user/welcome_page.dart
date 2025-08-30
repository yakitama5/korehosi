import 'package:family_wish_list/gen/assets.gen.dart';
import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../application/config/url_config.dart';
import '../../components/importer.dart';
import '../../hooks/importer.dart';
import '../../routes/importer.dart';
import '../../theme/importer.dart';

class WelcomePage extends HookWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
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

class _WelcomeImage extends HookWidget {
  const _WelcomeImage();

  @override
  Widget build(BuildContext context) {
    final colorScheme = useColorScheme();

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
    final colorScheme = useColorScheme();
    final textTheme = useTextTheme();

    return Column(
      children: [
        ConstrainedTabletBox(
          child: ExpandWidthContainer(
            child: FilledButton(
              onPressed: () => onStart(context),
              child: Text(i18n.app.start),
            ),
          ),
        ),
        Text(
          i18n.app.firstTime,
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
    return ConstrainedTabletBox(
      child: ExpandWidthContainer(
        child: OutlinedButton(
          onPressed: () => onAccountLink(context),
          child: Text(i18n.app.accountLink),
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
    return Column(
      children: [
        UrlLink(url: urlConfig.howToUse, label: i18n.app.howToUse),
        const Gap(32),
        ExpandWidthContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: UrlLink(
                    url: urlConfig.contactUs, label: i18n.app.contactUs),
              ),
              Flexible(
                child: UrlLink(
                  url: urlConfig.privacyPolicyJa,
                  label: i18n.app.privacyPolicy,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
