// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_share_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(groupShareUsecase)
const groupShareUsecaseProvider = GroupShareUsecaseProvider._();

final class GroupShareUsecaseProvider
    extends
        $FunctionalProvider<
          GroupShareUsecase,
          GroupShareUsecase,
          GroupShareUsecase
        >
    with $Provider<GroupShareUsecase> {
  const GroupShareUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupShareUsecaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupShareUsecaseHash();

  @$internal
  @override
  $ProviderElement<GroupShareUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GroupShareUsecase create(Ref ref) {
    return groupShareUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GroupShareUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GroupShareUsecase>(value),
    );
  }
}

String _$groupShareUsecaseHash() => r'790c34ed1fa288446f845f580f52abbb7e0b5f7d';
