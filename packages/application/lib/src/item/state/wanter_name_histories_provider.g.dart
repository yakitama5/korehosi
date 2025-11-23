// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'wanter_name_histories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ほしい人の履歴を取得する

@ProviderFor(wanterNameHistories)
const wanterNameHistoriesProvider = WanterNameHistoriesFamily._();

/// ほしい人の履歴を取得する

final class WanterNameHistoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          Stream<List<String>>
        >
    with $FutureModifier<List<String>>, $StreamProvider<List<String>> {
  /// ほしい人の履歴を取得する
  const WanterNameHistoriesProvider._({
    required WanterNameHistoriesFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'wanterNameHistoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$wanterNameHistoriesHash();

  @override
  String toString() {
    return r'wanterNameHistoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<String>> create(Ref ref) {
    final argument = this.argument as GroupId;
    return wanterNameHistories(ref, groupId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WanterNameHistoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$wanterNameHistoriesHash() =>
    r'46f1198ad07c303bc88ecfb35edf96716ae47986';

/// ほしい人の履歴を取得する

final class WanterNameHistoriesFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<String>>, GroupId> {
  const WanterNameHistoriesFamily._()
    : super(
        retry: null,
        name: r'wanterNameHistoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// ほしい人の履歴を取得する

  WanterNameHistoriesProvider call({required GroupId groupId}) =>
      WanterNameHistoriesProvider._(argument: groupId, from: this);

  @override
  String toString() => r'wanterNameHistoriesProvider';
}
