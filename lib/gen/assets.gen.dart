/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/account_link.svg
  String get accountLink => 'assets/images/account_link.svg';

  /// File path: assets/images/apple.svg
  String get apple => 'assets/images/apple.svg';

  /// File path: assets/images/google.svg
  String get google => 'assets/images/google.svg';

  /// File path: assets/images/onboard_done.svg
  String get onboardDone => 'assets/images/onboard_done.svg';

  /// File path: assets/images/onboard_gift.svg
  String get onboardGift => 'assets/images/onboard_gift.svg';

  /// File path: assets/images/onboard_profile.svg
  String get onboardProfile => 'assets/images/onboard_profile.svg';

  /// File path: assets/images/onboard_sex.svg
  String get onboardSex => 'assets/images/onboard_sex.svg';

  /// File path: assets/images/onboard_start.svg
  String get onboardStart => 'assets/images/onboard_start.svg';

  /// List of all assets
  List<String> get values => [
        accountLink,
        apple,
        google,
        onboardDone,
        onboardGift,
        onboardProfile,
        onboardSex,
        onboardStart
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/empty.json
  String get empty => 'assets/lottie/empty.json';

  /// File path: assets/lottie/error.json
  String get error => 'assets/lottie/error.json';

  /// File path: assets/lottie/group.json
  String get group => 'assets/lottie/group.json';

  /// File path: assets/lottie/simple_analytics.json
  String get simpleAnalytics => 'assets/lottie/simple_analytics.json';

  /// File path: assets/lottie/woman_empty_box.json
  String get womanEmptyBox => 'assets/lottie/woman_empty_box.json';

  /// List of all assets
  List<String> get values =>
      [empty, error, group, simpleAnalytics, womanEmptyBox];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
