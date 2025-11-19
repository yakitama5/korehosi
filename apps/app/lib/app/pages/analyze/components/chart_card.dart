import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:nested/nested.dart';
import 'package:packages_designsystem/widgets.dart';

/// グラフ表示用のCard
class ChartCard extends SingleChildStatelessWidget {
  const ChartCard({
    super.key,
    required super.child,
    required this.title,
    this.iconData,
    this.onTap,
  });

  final String title;
  final IconData? iconData;
  final VoidCallback? onTap;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => HookBuilder(
    builder: (context) {
      final textTheme = useTextTheme();

      return ElevatedCard(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  if (iconData != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Icon(iconData),
                    ),
                  Text(title, style: textTheme.titleLarge),
                ],
              ),
              const Gap(4),
              PagePadding(child: child),
            ],
          ),
        ),
      );
    },
  );
}
