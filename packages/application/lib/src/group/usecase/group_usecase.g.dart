// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(groupUsecase)
const groupUsecaseProvider = GroupUsecaseProvider._();

final class GroupUsecaseProvider
    extends $FunctionalProvider<GroupUsecase, GroupUsecase, GroupUsecase>
    with $Provider<GroupUsecase> {
  const GroupUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupUsecaseHash();

  @$internal
  @override
  $ProviderElement<GroupUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GroupUsecase create(Ref ref) {
    return groupUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GroupUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GroupUsecase>(value),
    );
  }
}

String _$groupUsecaseHash() => r'7052184c4e41784c33d7f048a5b41b2fee5263c0';
