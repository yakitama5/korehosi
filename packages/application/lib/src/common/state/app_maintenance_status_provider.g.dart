// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_maintenance_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appMaintenanceStatus)
const appMaintenanceStatusProvider = AppMaintenanceStatusProvider._();

final class AppMaintenanceStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<AppMaintenanceStatus>,
          AppMaintenanceStatus,
          Stream<AppMaintenanceStatus>
        >
    with
        $FutureModifier<AppMaintenanceStatus>,
        $StreamProvider<AppMaintenanceStatus> {
  const AppMaintenanceStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appMaintenanceStatusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appMaintenanceStatusHash();

  @$internal
  @override
  $StreamProviderElement<AppMaintenanceStatus> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<AppMaintenanceStatus> create(Ref ref) {
    return appMaintenanceStatus(ref);
  }
}

String _$appMaintenanceStatusHash() =>
    r'21f96f6e13ee37f2b3f3b963796b096378ea57af';
