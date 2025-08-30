import 'dart:async';

import 'package:family_wish_list/app/application/usecase/run_usecase_mixin.dart';
import 'package:family_wish_list/app/application/usecase/user/user_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_usecase.g.dart';

@riverpod
AppUsecase appUsecase(Ref ref) => AppUsecase(ref);

/// アプリ共通のユースケース
class AppUsecase with RunUsecaseMixin {
  const AppUsecase(this.ref);

  final Ref ref;

  /// アプリ起動時
  Future<void> onLanched() async =>
      ref.read(userUsecaseProvider).refreshFCMTokenAndCheckPushPermission();
}
