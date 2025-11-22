// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'notification_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(notificationMessage)
const notificationMessageProvider = NotificationMessageProvider._();

final class NotificationMessageProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationMessage>,
          NotificationMessage,
          Stream<NotificationMessage>
        >
    with
        $FutureModifier<NotificationMessage>,
        $StreamProvider<NotificationMessage> {
  const NotificationMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationMessageHash();

  @$internal
  @override
  $StreamProviderElement<NotificationMessage> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<NotificationMessage> create(Ref ref) {
    return notificationMessage(ref);
  }
}

String _$notificationMessageHash() =>
    r'10836dd85fb80c340a2ad65b53f869fa7fb4bba7';
