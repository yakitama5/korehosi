import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduction_screen_key_provider.g.dart';

/// オンボード時のページキー
@riverpod
GlobalKey<IntroductionScreenState> introductionScreenKey(
  IntroductionScreenKeyRef ref,
) {
  return GlobalKey<IntroductionScreenState>();
}
