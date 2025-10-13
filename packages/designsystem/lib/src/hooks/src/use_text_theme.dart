import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TextTheme useTextTheme() => Theme.of(useContext()).textTheme;
