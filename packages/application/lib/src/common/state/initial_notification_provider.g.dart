// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'initial_notification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// プッシュ通知でアプリを表示した際の初期メッセージ

@ProviderFor(initialNotificationMessage)
const initialNotificationMessageProvider =
    InitialNotificationMessageProvider._();

/// プッシュ通知でアプリを表示した際の初期メッセージ

final class InitialNotificationMessageProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationMessage?>,
          NotificationMessage?,
          FutureOr<NotificationMessage?>
        >
    with
        $FutureModifier<NotificationMessage?>,
        $FutureProvider<NotificationMessage?> {
  /// プッシュ通知でアプリを表示した際の初期メッセージ
  const InitialNotificationMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initialNotificationMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initialNotificationMessageHash();

  @$internal
  @override
  $FutureProviderElement<NotificationMessage?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationMessage?> create(Ref ref) {
    return initialNotificationMessage(ref);
  }
}

String _$initialNotificationMessageHash() =>
    r'6ffaf54a22aea31a1770af7e4a9c76755804e086';
