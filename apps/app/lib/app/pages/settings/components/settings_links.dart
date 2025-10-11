import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:packages_designsystem/widgets.dart';

// TODO(yakitama5): URLはアプリに応じて定義すること
const _dummyUrl = 'https://flutter.dev';

class HowToUseLink extends StatelessWidget {
  const HowToUseLink({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlLink(
      url: _dummyUrl,
      label: i18n.settings.settingsPage.help.howToUse,
    );
  }
}

class ContactUsLink extends StatelessWidget {
  const ContactUsLink({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlLink(
      url: _dummyUrl,
      label: i18n.settings.settingsPage.help.contactUs,
    );
  }
}

class PrivacyPollicyLink extends StatelessWidget {
  const PrivacyPollicyLink({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlLink(
      url: _dummyUrl,
      label: i18n.settings.settingsPage.help.privacyPollicy,
    );
  }
}
