import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ColorScheme useColorScheme() => Theme.of(useContext()).colorScheme;
