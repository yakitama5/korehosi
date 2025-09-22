enum Preferences<T> {
  curentGroup('current_group_id', ''),
  fcmTokenTimestamp('fcm_token_timestamp', ''),
  themeColor('COLOR_STYLE', 'appColor'),
  uiStyle('UI_STYLE', 'system'),
  themeMode('THEME_MODE', 'dark'),
  goodsViewLayout('GOODS_VIEW_LAYOUT', 'list');

  const Preferences(this.key, this.defaultValue);

  final String key;
  final T defaultValue;
}
