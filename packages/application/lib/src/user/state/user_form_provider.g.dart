// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_form_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ユーザーの入力フォーム

@ProviderFor(UserForm)
const userFormProvider = UserFormProvider._();

/// ユーザーの入力フォーム
final class UserFormProvider
    extends $AsyncNotifierProvider<UserForm, FormGroup> {
  /// ユーザーの入力フォーム
  const UserFormProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userFormProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userFormHash();

  @$internal
  @override
  UserForm create() => UserForm();
}

String _$userFormHash() => r'9bd5e90eac312130c768c4e1a97d462c77a03b3a';

/// ユーザーの入力フォーム

abstract class _$UserForm extends $AsyncNotifier<FormGroup> {
  FutureOr<FormGroup> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<FormGroup>, FormGroup>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FormGroup>, FormGroup>,
              AsyncValue<FormGroup>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
