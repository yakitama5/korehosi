import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_status_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AppMaintenanceStatus> appMaintenanceStatus(Ref ref) {
  final repository = ref.watch(appMaintenanceRepositoryProvider);
  return repository.listenMaintenanceMode().map(
    (isMaintenance) => isMaintenance
        ? AppMaintenanceStatus.maintenance
        : AppMaintenanceStatus.none,
  );
}
