// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_wanter_names_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ほしい人コレクションの参照

@ProviderFor(wanterNameCollectionRef)
const wanterNameCollectionRefProvider = WanterNameCollectionRefFamily._();

/// ほしい人コレクションの参照

final class WanterNameCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreWanterNameModel>,
          CollectionReference<FirestoreWanterNameModel>,
          CollectionReference<FirestoreWanterNameModel>
        >
    with $Provider<CollectionReference<FirestoreWanterNameModel>> {
  /// ほしい人コレクションの参照
  const WanterNameCollectionRefProvider._({
    required WanterNameCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'wanterNameCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$wanterNameCollectionRefHash();

  @override
  String toString() {
    return r'wanterNameCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreWanterNameModel>>
  $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreWanterNameModel> create(Ref ref) {
    final argument = this.argument as GroupId;
    return wanterNameCollectionRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    CollectionReference<FirestoreWanterNameModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreWanterNameModel>>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WanterNameCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$wanterNameCollectionRefHash() =>
    r'99739e483b92fb0b21945e6859467d77a043eb47';

/// ほしい人コレクションの参照

final class WanterNameCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreWanterNameModel>,
          GroupId
        > {
  const WanterNameCollectionRefFamily._()
    : super(
        retry: null,
        name: r'wanterNameCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// ほしい人コレクションの参照

  WanterNameCollectionRefProvider call({required GroupId groupId}) =>
      WanterNameCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'wanterNameCollectionRefProvider';
}
