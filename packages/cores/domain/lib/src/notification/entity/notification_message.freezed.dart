// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationMessage {

 String? get senderId; String? get category; Map<String, dynamic> get data; String? get from; String? get messageId; String? get messageType;
/// Create a copy of NotificationMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationMessageCopyWith<NotificationMessage> get copyWith => _$NotificationMessageCopyWithImpl<NotificationMessage>(this as NotificationMessage, _$identity);

  /// Serializes this NotificationMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationMessage&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.from, from) || other.from == from)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.messageType, messageType) || other.messageType == messageType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderId,category,const DeepCollectionEquality().hash(data),from,messageId,messageType);

@override
String toString() {
  return 'NotificationMessage(senderId: $senderId, category: $category, data: $data, from: $from, messageId: $messageId, messageType: $messageType)';
}


}

/// @nodoc
abstract mixin class $NotificationMessageCopyWith<$Res>  {
  factory $NotificationMessageCopyWith(NotificationMessage value, $Res Function(NotificationMessage) _then) = _$NotificationMessageCopyWithImpl;
@useResult
$Res call({
 String? senderId, String? category, Map<String, dynamic> data, String? from, String? messageId, String? messageType
});




}
/// @nodoc
class _$NotificationMessageCopyWithImpl<$Res>
    implements $NotificationMessageCopyWith<$Res> {
  _$NotificationMessageCopyWithImpl(this._self, this._then);

  final NotificationMessage _self;
  final $Res Function(NotificationMessage) _then;

/// Create a copy of NotificationMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderId = freezed,Object? category = freezed,Object? data = null,Object? from = freezed,Object? messageId = freezed,Object? messageType = freezed,}) {
  return _then(_self.copyWith(
senderId: freezed == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,messageType: freezed == messageType ? _self.messageType : messageType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationMessage].
extension NotificationMessagePatterns on NotificationMessage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationMessage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationMessage value)  $default,){
final _that = this;
switch (_that) {
case _NotificationMessage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationMessage value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationMessage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? senderId,  String? category,  Map<String, dynamic> data,  String? from,  String? messageId,  String? messageType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationMessage() when $default != null:
return $default(_that.senderId,_that.category,_that.data,_that.from,_that.messageId,_that.messageType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? senderId,  String? category,  Map<String, dynamic> data,  String? from,  String? messageId,  String? messageType)  $default,) {final _that = this;
switch (_that) {
case _NotificationMessage():
return $default(_that.senderId,_that.category,_that.data,_that.from,_that.messageId,_that.messageType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? senderId,  String? category,  Map<String, dynamic> data,  String? from,  String? messageId,  String? messageType)?  $default,) {final _that = this;
switch (_that) {
case _NotificationMessage() when $default != null:
return $default(_that.senderId,_that.category,_that.data,_that.from,_that.messageId,_that.messageType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationMessage implements NotificationMessage {
  const _NotificationMessage({this.senderId, this.category, required final  Map<String, dynamic> data, this.from, this.messageId, this.messageType}): _data = data;
  factory _NotificationMessage.fromJson(Map<String, dynamic> json) => _$NotificationMessageFromJson(json);

@override final  String? senderId;
@override final  String? category;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override final  String? from;
@override final  String? messageId;
@override final  String? messageType;

/// Create a copy of NotificationMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationMessageCopyWith<_NotificationMessage> get copyWith => __$NotificationMessageCopyWithImpl<_NotificationMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationMessage&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.from, from) || other.from == from)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.messageType, messageType) || other.messageType == messageType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderId,category,const DeepCollectionEquality().hash(_data),from,messageId,messageType);

@override
String toString() {
  return 'NotificationMessage(senderId: $senderId, category: $category, data: $data, from: $from, messageId: $messageId, messageType: $messageType)';
}


}

/// @nodoc
abstract mixin class _$NotificationMessageCopyWith<$Res> implements $NotificationMessageCopyWith<$Res> {
  factory _$NotificationMessageCopyWith(_NotificationMessage value, $Res Function(_NotificationMessage) _then) = __$NotificationMessageCopyWithImpl;
@override @useResult
$Res call({
 String? senderId, String? category, Map<String, dynamic> data, String? from, String? messageId, String? messageType
});




}
/// @nodoc
class __$NotificationMessageCopyWithImpl<$Res>
    implements _$NotificationMessageCopyWith<$Res> {
  __$NotificationMessageCopyWithImpl(this._self, this._then);

  final _NotificationMessage _self;
  final $Res Function(_NotificationMessage) _then;

/// Create a copy of NotificationMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderId = freezed,Object? category = freezed,Object? data = null,Object? from = freezed,Object? messageId = freezed,Object? messageType = freezed,}) {
  return _then(_NotificationMessage(
senderId: freezed == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,messageType: freezed == messageType ? _self.messageType : messageType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
