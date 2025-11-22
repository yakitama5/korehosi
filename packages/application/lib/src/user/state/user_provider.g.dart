// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

@ProviderFor(user)
const userProvider = UserFamily._();

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

final class UserProvider
    extends $FunctionalProvider<AsyncValue<User?>, User?, Stream<User?>>
    with $FutureModifier<User?>, $StreamProvider<User?> {
  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  const UserProvider._({
    required UserFamily super.from,
    required UserId super.argument,
  }) : super(
         retry: null,
         name: r'userProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userHash();

  @override
  String toString() {
    return r'userProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<User?> create(Ref ref) {
    final argument = this.argument as UserId;
    return user(ref, userId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userHash() => r'956e4dec3579a70e5d76087201d3e742136f708f';

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

final class UserFamily extends $Family
    with $FunctionalFamilyOverride<Stream<User?>, UserId> {
  const UserFamily._()
    : super(
        retry: null,
        name: r'userProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定

  UserProvider call({required UserId userId}) =>
      UserProvider._(argument: userId, from: this);

  @override
  String toString() => r'userProvider';
}
