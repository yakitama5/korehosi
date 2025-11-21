// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_update_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appUpdateStatus)
const appUpdateStatusProvider = AppUpdateStatusProvider._();

final class AppUpdateStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<AppUpdateStatus>,
          AppUpdateStatus,
          FutureOr<AppUpdateStatus>
        >
    with $FutureModifier<AppUpdateStatus>, $FutureProvider<AppUpdateStatus> {
  const AppUpdateStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appUpdateStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appUpdateStatusHash();

  @$internal
  @override
  $FutureProviderElement<AppUpdateStatus> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AppUpdateStatus> create(Ref ref) {
    return appUpdateStatus(ref);
  }
}

String _$appUpdateStatusHash() => r'78c98efea1f6ffa5a103a7e7ac3fdbae30f7710f';
