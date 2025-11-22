// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userUsecase)
const userUsecaseProvider = UserUsecaseProvider._();

final class UserUsecaseProvider
    extends $FunctionalProvider<UserUsecase, UserUsecase, UserUsecase>
    with $Provider<UserUsecase> {
  const UserUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userUsecaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userUsecaseHash();

  @$internal
  @override
  $ProviderElement<UserUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserUsecase create(Ref ref) {
    return userUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserUsecase>(value),
    );
  }
}

String _$userUsecaseHash() => r'd3a82142385cdf14e1227b7fb885412b46dc833a';
