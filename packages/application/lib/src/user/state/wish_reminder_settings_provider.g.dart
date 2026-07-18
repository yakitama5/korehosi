// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'wish_reminder_settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wishReminderSettings)
const wishReminderSettingsProvider = WishReminderSettingsProvider._();

final class WishReminderSettingsProvider
    extends
        $FunctionalProvider<
          AsyncValue<WishReminderSettings>,
          WishReminderSettings,
          Stream<WishReminderSettings>
        >
    with
        $FutureModifier<WishReminderSettings>,
        $StreamProvider<WishReminderSettings> {
  const WishReminderSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishReminderSettingsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishReminderSettingsHash();

  @$internal
  @override
  $StreamProviderElement<WishReminderSettings> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<WishReminderSettings> create(Ref ref) {
    return wishReminderSettings(ref);
  }
}

String _$wishReminderSettingsHash() =>
    r'e05c2c3197d3b16fd7ed8c653b02ea78ad9d1841';
