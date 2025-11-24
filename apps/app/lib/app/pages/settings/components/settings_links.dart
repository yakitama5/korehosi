import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/widgets.dart';

class HowToUseLink extends StatelessWidget {
  const HowToUseLink({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlLink(
      url: urlConfig.howToUse,
      label: i18n.settings.settingsPage.help.howToUse,
    );
  }
}

class ContactUsLink extends StatelessWidget {
  const ContactUsLink({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlLink(
      url: urlConfig.contactUs,
      label: i18n.settings.settingsPage.help.contactUs,
    );
  }
}

class PrivacyPolicyLink extends StatelessWidget {
  const PrivacyPolicyLink({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlLink(
      url: urlConfig.privacyPolicyJa,
      label: i18n.settings.settingsPage.help.privacyPolicy,
    );
  }
}
