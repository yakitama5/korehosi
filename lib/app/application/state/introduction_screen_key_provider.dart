import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduction_screen_key_provider.g.dart';

/// オンボード時のページキー
@riverpod
GlobalKey<IntroductionScreenState> introductionScreenKey(
  Ref ref,
) {
  return GlobalKey<IntroductionScreenState>();
}
