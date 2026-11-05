import 'package:flutter/cupertino.dart';
import 'package:nested/nested.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: constant_identifier_names
const String UHD = '4K';

class ResponsiveAutoScaleBox extends SingleChildStatelessWidget {
  const ResponsiveAutoScaleBox({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    final scaledChild = ResponsiveBreakpoints.builder(
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

    return LayoutBuilder(
      builder: (context, constraints) {
        final mediaQuery = MediaQuery.of(context);
        final viewport = Size(constraints.maxWidth, constraints.maxHeight);
        final hasViewport = _hasUsableSize(viewport);
        final hasMediaSize = _hasUsableSize(mediaQuery.size);
        final layoutSize = hasViewport
            ? viewport
            : hasMediaSize
            ? mediaQuery.size
            : const Size(450, 450);

        // Android can report an empty surface while locked or resuming.
        // Keep the subtree mounted, but give the scaler finite dimensions
        // until the real metrics arrive so it never calculates 0 / 0.
        return Offstage(
          offstage: !hasViewport || !hasMediaSize,
          child: SizedBox(
            width: layoutSize.width,
            height: layoutSize.height,
            child: OverflowBox(
              minWidth: layoutSize.width,
              maxWidth: layoutSize.width,
              minHeight: layoutSize.height,
              maxHeight: layoutSize.height,
              child: MediaQuery(
                data: hasMediaSize
                    ? mediaQuery
                    : mediaQuery.copyWith(
                        size: layoutSize,
                        viewInsets: EdgeInsets.zero,
                        viewPadding: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                      ),
                child: scaledChild,
              ),
            ),
          ),
        );
      },
    );
  }
}

bool _hasUsableSize(Size size) =>
    size.width.isFinite && size.height.isFinite && !size.isEmpty;
