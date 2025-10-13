import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLink extends StatelessWidget {
  const UrlLink({
    super.key,
    required this.url,
    required this.label,
    this.textStyle,
    this.onTap,
  });

  final String label;
  final String url;
  final TextStyle? textStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final defaultStyle =
        textTheme.labelMedium?.copyWith(color: colorScheme.onPrimaryContainer);

    // HACK(yakitama5): `ThemeExtension`
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (context, followLink) => GestureDetector(
        onTap: onTap ?? () => launchUrlString(url),
        child: Text(
          label,
          style: defaultStyle?.merge(textStyle),
        ),
      ),
    );
  }
}
