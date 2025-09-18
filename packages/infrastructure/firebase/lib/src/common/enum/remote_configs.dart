enum RemoteConfigs<T> {
  maintenance('app_maintenance_mode', false),
  latestAppVersion('latest_app_version', '0.0.0'),
  forceUpdateAppVersion('force_update_app_version', '0.0.0');

  const RemoteConfigs(this.key, this.defaultValue);

  final String key;
  final T defaultValue;
}
