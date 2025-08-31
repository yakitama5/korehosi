// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_notification_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestoreNotificationTokenModel {

 String get token;@timestampKey DateTime? get createdAt;@timestampKey DateTime? get updatedAt;
/// Create a copy of FirestoreNotificationTokenModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FirestoreNotificationTokenModelCopyWith<FirestoreNotificationTokenModel> get copyWith => _$FirestoreNotificationTokenModelCopyWithImpl<FirestoreNotificationTokenModel>(this as FirestoreNotificationTokenModel, _$identity);

  /// Serializes this FirestoreNotificationTokenModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirestoreNotificationTokenModel&&(identical(other.token, token) || other.token == token)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,createdAt,updatedAt);

@override
String toString() {
  return 'FirestoreNotificationTokenModel(token: $token, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FirestoreNotificationTokenModelCopyWith<$Res>  {
  factory $FirestoreNotificationTokenModelCopyWith(FirestoreNotificationTokenModel value, $Res Function(FirestoreNotificationTokenModel) _then) = _$FirestoreNotificationTokenModelCopyWithImpl;
@useResult
$Res call({
 String token,@timestampKey DateTime? createdAt,@timestampKey DateTime? updatedAt
});




}
/// @nodoc
class _$FirestoreNotificationTokenModelCopyWithImpl<$Res>
    implements $FirestoreNotificationTokenModelCopyWith<$Res> {
  _$FirestoreNotificationTokenModelCopyWithImpl(this._self, this._then);

  final FirestoreNotificationTokenModel _self;
  final $Res Function(FirestoreNotificationTokenModel) _then;

/// Create a copy of FirestoreNotificationTokenModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FirestoreNotificationTokenModel].
extension FirestoreNotificationTokenModelPatterns on FirestoreNotificationTokenModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FirestoreNotificationTokenModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FirestoreNotificationTokenModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FirestoreNotificationTokenModel value)  $default,){
final _that = this;
switch (_that) {
case _FirestoreNotificationTokenModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FirestoreNotificationTokenModel value)?  $default,){
final _that = this;
switch (_that) {
case _FirestoreNotificationTokenModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token, @timestampKey  DateTime? createdAt, @timestampKey  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FirestoreNotificationTokenModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token, @timestampKey  DateTime? createdAt, @timestampKey  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FirestoreNotificationTokenModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token, @timestampKey  DateTime? createdAt, @timestampKey  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FirestoreNotificationTokenModel() when $default != null:
return $default(_that.token,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FirestoreNotificationTokenModel implements FirestoreNotificationTokenModel {
  const _FirestoreNotificationTokenModel({required this.token, @timestampKey this.createdAt, @timestampKey this.updatedAt});
  factory _FirestoreNotificationTokenModel.fromJson(Map<String, dynamic> json) => _$FirestoreNotificationTokenModelFromJson(json);

@override final  String token;
@override@timestampKey final  DateTime? createdAt;
@override@timestampKey final  DateTime? updatedAt;

/// Create a copy of FirestoreNotificationTokenModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirestoreNotificationTokenModelCopyWith<_FirestoreNotificationTokenModel> get copyWith => __$FirestoreNotificationTokenModelCopyWithImpl<_FirestoreNotificationTokenModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FirestoreNotificationTokenModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirestoreNotificationTokenModel&&(identical(other.token, token) || other.token == token)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,createdAt,updatedAt);

@override
String toString() {
  return 'FirestoreNotificationTokenModel(token: $token, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FirestoreNotificationTokenModelCopyWith<$Res> implements $FirestoreNotificationTokenModelCopyWith<$Res> {
  factory _$FirestoreNotificationTokenModelCopyWith(_FirestoreNotificationTokenModel value, $Res Function(_FirestoreNotificationTokenModel) _then) = __$FirestoreNotificationTokenModelCopyWithImpl;
@override @useResult
$Res call({
 String token,@timestampKey DateTime? createdAt,@timestampKey DateTime? updatedAt
});




}
/// @nodoc
class __$FirestoreNotificationTokenModelCopyWithImpl<$Res>
    implements _$FirestoreNotificationTokenModelCopyWith<$Res> {
  __$FirestoreNotificationTokenModelCopyWithImpl(this._self, this._then);

  final _FirestoreNotificationTokenModel _self;
  final $Res Function(_FirestoreNotificationTokenModel) _then;

/// Create a copy of FirestoreNotificationTokenModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_FirestoreNotificationTokenModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
