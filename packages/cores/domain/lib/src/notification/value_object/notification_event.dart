/// 通知イベント
enum NotificationEvent {
  addWishItem('ADD_WISH_ITEM_NOTIFICATION_CLICK'),
  ;

  const NotificationEvent(this.actionName);

  final String actionName;
}
