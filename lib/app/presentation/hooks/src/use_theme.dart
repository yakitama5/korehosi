import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ThemeData useTheme() {
  return Theme.of(useContext());
}

TextTheme useTextTheme() {
  return useTheme().textTheme;
}

ColorScheme useColorScheme() {
  return useTheme().colorScheme;
}
