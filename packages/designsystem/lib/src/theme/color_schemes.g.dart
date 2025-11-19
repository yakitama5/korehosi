import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff855317),
      surfaceTint: Color(0xff855317),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdcbc),
      onPrimaryContainer: Color(0xff683d00),
      secondary: Color(0xff854b70),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd8ec),
      onSecondaryContainer: Color(0xff6a3457),
      tertiary: Color(0xff824c76),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd7f1),
      onTertiaryContainer: Color(0xff67355d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff211a14),
      onSurfaceVariant: Color(0xff50453a),
      outline: Color(0xff837568),
      outlineVariant: Color(0xffd5c3b5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f28),
      inversePrimary: Color(0xfffbb974),
      primaryFixed: Color(0xffffdcbc),
      onPrimaryFixed: Color(0xff2c1700),
      primaryFixedDim: Color(0xfffbb974),
      onPrimaryFixedVariant: Color(0xff683d00),
      secondaryFixed: Color(0xffffd8ec),
      onSecondaryFixed: Color(0xff37072a),
      secondaryFixedDim: Color(0xfff9b1db),
      onSecondaryFixedVariant: Color(0xff6a3457),
      tertiaryFixed: Color(0xffffd7f1),
      onTertiaryFixed: Color(0xff35082f),
      tertiaryFixedDim: Color(0xfff4b2e2),
      onTertiaryFixedVariant: Color(0xff67355d),
      surfaceDim: Color(0xffe6d7cd),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1e7),
      surfaceContainer: Color(0xfffaebe0),
      surfaceContainerHigh: Color(0xfff4e6da),
      surfaceContainerHighest: Color(0xffeee0d5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff512e00),
      surfaceTint: Color(0xff855317),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff966224),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff572346),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff965a7f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff54244b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff935b85),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff16100a),
      onSurfaceVariant: Color(0xff3f342a),
      outline: Color(0xff5d5045),
      outlineVariant: Color(0xff786b5f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f28),
      inversePrimary: Color(0xfffbb974),
      primaryFixed: Color(0xff966224),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff794a0d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff965a7f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff7a4266),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff935b85),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff77436c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd2c4b9),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1e7),
      surfaceContainer: Color(0xfff4e6da),
      surfaceContainerHigh: Color(0xffe9dacf),
      surfaceContainerHighest: Color(0xffddcfc4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff432500),
      surfaceTint: Color(0xff855317),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b3f01),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b193b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d365a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff491a41),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6a375f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff342a20),
      outlineVariant: Color(0xff53473c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f28),
      inversePrimary: Color(0xfffbb974),
      primaryFixed: Color(0xff6b3f01),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4c2b00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d365a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff532042),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6a375f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff502148),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc4b6ac),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdeee3),
      surfaceContainer: Color(0xffeee0d5),
      surfaceContainerHigh: Color(0xffe0d2c7),
      surfaceContainerHighest: Color(0xffd2c4b9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbb974),
      surfaceTint: Color(0xfffbb974),
      onPrimary: Color(0xff492900),
      primaryContainer: Color(0xff683d00),
      onPrimaryContainer: Color(0xffffdcbc),
      secondary: Color(0xfff9b1db),
      onSecondary: Color(0xff501e40),
      secondaryContainer: Color(0xff6a3457),
      onSecondaryContainer: Color(0xffffd8ec),
      tertiary: Color(0xfff4b2e2),
      onTertiary: Color(0xff4e1e45),
      tertiaryContainer: Color(0xff67355d),
      onTertiaryContainer: Color(0xffffd7f1),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff19120c),
      onSurface: Color(0xffeee0d5),
      onSurfaceVariant: Color(0xffd5c3b5),
      outline: Color(0xff9d8e81),
      outlineVariant: Color(0xff50453a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeee0d5),
      inversePrimary: Color(0xff855317),
      primaryFixed: Color(0xffffdcbc),
      onPrimaryFixed: Color(0xff2c1700),
      primaryFixedDim: Color(0xfffbb974),
      onPrimaryFixedVariant: Color(0xff683d00),
      secondaryFixed: Color(0xffffd8ec),
      onSecondaryFixed: Color(0xff37072a),
      secondaryFixedDim: Color(0xfff9b1db),
      onSecondaryFixedVariant: Color(0xff6a3457),
      tertiaryFixed: Color(0xffffd7f1),
      onTertiaryFixed: Color(0xff35082f),
      tertiaryFixedDim: Color(0xfff4b2e2),
      onTertiaryFixedVariant: Color(0xff67355d),
      surfaceDim: Color(0xff19120c),
      surfaceBright: Color(0xff403830),
      surfaceContainerLowest: Color(0xff130d07),
      surfaceContainerLow: Color(0xff211a14),
      surfaceContainer: Color(0xff251e17),
      surfaceContainerHigh: Color(0xff302921),
      surfaceContainerHighest: Color(0xff3c332c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd5ac),
      surfaceTint: Color(0xfffbb974),
      onPrimary: Color(0xff3a1f00),
      primaryContainer: Color(0xffbf8544),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffcfe9),
      onSecondary: Color(0xff431235),
      secondaryContainer: Color(0xffbe7ca4),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffceef),
      onTertiary: Color(0xff41133a),
      tertiaryContainer: Color(0xffba7daa),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff19120c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffebd9ca),
      outline: Color(0xffbfafa1),
      outlineVariant: Color(0xff9d8e81),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeee0d5),
      inversePrimary: Color(0xff6a3e00),
      primaryFixed: Color(0xffffdcbc),
      onPrimaryFixed: Color(0xff1d0d00),
      primaryFixedDim: Color(0xfffbb974),
      onPrimaryFixedVariant: Color(0xff512e00),
      secondaryFixed: Color(0xffffd8ec),
      onSecondaryFixed: Color(0xff29001e),
      secondaryFixedDim: Color(0xfff9b1db),
      onSecondaryFixedVariant: Color(0xff572346),
      tertiaryFixed: Color(0xffffd7f1),
      onTertiaryFixed: Color(0xff280023),
      tertiaryFixedDim: Color(0xfff4b2e2),
      onTertiaryFixedVariant: Color(0xff54244b),
      surfaceDim: Color(0xff19120c),
      surfaceBright: Color(0xff4c433b),
      surfaceContainerLowest: Color(0xff0c0603),
      surfaceContainerLow: Color(0xff231c16),
      surfaceContainer: Color(0xff2e261f),
      surfaceContainerHigh: Color(0xff39312a),
      surfaceContainerHighest: Color(0xff453c34),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffedde),
      surfaceTint: Color(0xfffbb974),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfff7b670),
      onPrimaryContainer: Color(0xff150800),
      secondary: Color(0xffffebf3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xfff5add7),
      onSecondaryContainer: Color(0xff1e0016),
      tertiary: Color(0xffffeaf6),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff0aede),
      onTertiaryContainer: Color(0xff1d001a),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff19120c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffedde),
      outlineVariant: Color(0xffd1c0b1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeee0d5),
      inversePrimary: Color(0xff6a3e00),
      primaryFixed: Color(0xffffdcbc),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfffbb974),
      onPrimaryFixedVariant: Color(0xff1d0d00),
      secondaryFixed: Color(0xffffd8ec),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xfff9b1db),
      onSecondaryFixedVariant: Color(0xff29001e),
      tertiaryFixed: Color(0xffffd7f1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff4b2e2),
      onTertiaryFixedVariant: Color(0xff280023),
      surfaceDim: Color(0xff19120c),
      surfaceBright: Color(0xff584e46),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff251e17),
      surfaceContainer: Color(0xff372f28),
      surfaceContainerHigh: Color(0xff423a32),
      surfaceContainerHighest: Color(0xff4e453d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
