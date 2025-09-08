import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_service.g.dart';

@Riverpod(keepAlive: true)
AppMaintenanceService appMaintenanceService(Ref ref) =>
    throw UnimplementedError();

abstract class AppMaintenanceService {
  const AppMaintenanceService();
  Future<bool> fetchMaintenanceMode();
  Stream<bool> listenMaintenanceMode();
}
