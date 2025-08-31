import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_repository.g.dart';

@Riverpod(keepAlive: true)
AppMaintenanceRepository appMaintenanceRepository(
  Ref ref,
) =>
    throw UnimplementedError();

abstract class AppMaintenanceRepository {
  const AppMaintenanceRepository();
  Future<bool> fetchMaintenanceMode();
  Stream<bool> listenMaintenanceMode();
}
