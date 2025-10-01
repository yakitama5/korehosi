import 'package:flutter_app/app/application/state/introduction_screen_key_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../run_usecase_mixin.dart';

part 'onboard_usecase.g.dart';

@riverpod
OnboardUsecase onboardUsecase(Ref ref) => OnboardUsecase(ref);

/// オンボード(チュートリアル)に関するユースケース
class OnboardUsecase with RunUsecaseMixin {
  const OnboardUsecase(this.ref);

  final Ref ref;

  /// オンボーディングの次へ
  /// (フッター以外の箇所でもコールするため定義)
  void next() => ref.read(introductionScreenKeyProvider).currentState?.next();

  /// オンボーディングの前へ
  /// (フッター以外の箇所でもコールするため定義)
  void back() =>
      ref.read(introductionScreenKeyProvider).currentState?.previous();
}
