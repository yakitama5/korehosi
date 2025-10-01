import 'package:flutter/cupertino.dart';
import 'package:nested/nested.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: constant_identifier_names
const String UHD = '4K';

class ResponsiveAutoScaleBox extends SingleChildStatelessWidget {
  const ResponsiveAutoScaleBox({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      breakpoints: [
        // HACK(yakitama5): 設定はテーマ側に定義したい
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 900, name: TABLET),
        const Breakpoint(start: 901, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.maxFinite, name: UHD),
      ],
      child: Builder(
        builder: (context) => ResponsiveScaledBox(
          width: ResponsiveValue<double>(
            context,
            defaultValue: 450,
            conditionalValues: [
              const Condition.equals(
                name: MOBILE,
                value: 450,
              ),
              const Condition.between(
                start: 700,
                end: 900,
                value: 700,
              ),
              const Condition.between(
                start: 901,
                end: 1200,
                value: 900,
              ),
              const Condition.between(
                start: 1201,
                end: 1400,
                value: 1300,
              ),
              const Condition.between(
                start: 1401,
                end: 1920,
                value: 1600,
              ),
            ],
          ).value,
          child: child ?? const SizedBox.shrink(),
        ),
      ),
    );
  }
}
