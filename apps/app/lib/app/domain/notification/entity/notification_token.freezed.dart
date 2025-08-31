// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationToken {

 String get token; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of NotificationToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationTokenCopyWith<NotificationToken> get copyWith => _$NotificationTokenCopyWithImpl<NotificationToken>(this as NotificationToken, _$identity);

  /// Serializes this NotificationToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationToken&&(identical(other.token, token) || other.token == token)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,createdAt,updatedAt);

@override
String toString() {
  return 'NotificationToken(token: $token, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $NotificationTokenCopyWith<$Res>  {
  factory $NotificationTokenCopyWith(NotificationToken value, $Res Function(NotificationToken) _then) = _$NotificationTokenCopyWithImpl;
@useResult
$Res call({
 String token, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$NotificationTokenCopyWithImpl<$Res>
    implements $NotificationTokenCopyWith<$Res> {
  _$NotificationTokenCopyWithImpl(this._self, this._then);

  final NotificationToken _self;
  final $Res Function(NotificationToken) _then;

/// Create a copy of NotificationToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationToken].
extension NotificationTokenPatterns on NotificationToken {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationToken value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationToken() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationToken value)  $default,){
final _that = this;
switch (_that) {
case _NotificationToken():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationToken value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationToken() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationToken() when $default != null:
return $default(_that.token,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationToken():
return $default(_that.token,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationToken() when $default != null:
return $default(_that.token,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationToken implements NotificationToken {
  const _NotificationToken({required this.token, required this.createdAt, required this.updatedAt});
  factory _NotificationToken.fromJson(Map<String, dynamic> json) => _$NotificationTokenFromJson(json);

@override final  String token;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of NotificationToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationTokenCopyWith<_NotificationToken> get copyWith => __$NotificationTokenCopyWithImpl<_NotificationToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationToken&&(identical(other.token, token) || other.token == token)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,createdAt,updatedAt);

@override
String toString() {
  return 'NotificationToken(token: $token, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationTokenCopyWith<$Res> implements $NotificationTokenCopyWith<$Res> {
  factory _$NotificationTokenCopyWith(_NotificationToken value, $Res Function(_NotificationToken) _then) = __$NotificationTokenCopyWithImpl;
@override @useResult
$Res call({
 String token, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$NotificationTokenCopyWithImpl<$Res>
    implements _$NotificationTokenCopyWith<$Res> {
  __$NotificationTokenCopyWithImpl(this._self, this._then);

  final _NotificationToken _self;
  final $Res Function(_NotificationToken) _then;

/// Create a copy of NotificationToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_NotificationToken(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
