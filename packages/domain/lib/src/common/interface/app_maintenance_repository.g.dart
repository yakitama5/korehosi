// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_maintenance_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appMaintenanceRepository)
const appMaintenanceRepositoryProvider = AppMaintenanceRepositoryProvider._();

final class AppMaintenanceRepositoryProvider
    extends
        $FunctionalProvider<
          AppMaintenanceRepository,
          AppMaintenanceRepository,
          AppMaintenanceRepository
        >
    with $Provider<AppMaintenanceRepository> {
  const AppMaintenanceRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appMaintenanceRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appMaintenanceRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppMaintenanceRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppMaintenanceRepository create(Ref ref) {
    return appMaintenanceRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppMaintenanceRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppMaintenanceRepository>(value),
    );
  }
}

String _$appMaintenanceRepositoryHash() =>
    r'88b515da67165c5f8b70951ca32650d09ef17e5d';
