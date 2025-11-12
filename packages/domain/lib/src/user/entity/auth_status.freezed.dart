// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthStatus {

 UserId get userId; bool get isAnonymous; bool get linkedGoogle; bool get linkedApple;
/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStatusCopyWith<AuthStatus> get copyWith => _$AuthStatusCopyWithImpl<AuthStatus>(this as AuthStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStatus&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.linkedGoogle, linkedGoogle) || other.linkedGoogle == linkedGoogle)&&(identical(other.linkedApple, linkedApple) || other.linkedApple == linkedApple));
}


@override
int get hashCode => Object.hash(runtimeType,userId,isAnonymous,linkedGoogle,linkedApple);

@override
String toString() {
  return 'AuthStatus(userId: $userId, isAnonymous: $isAnonymous, linkedGoogle: $linkedGoogle, linkedApple: $linkedApple)';
}


}

/// @nodoc
abstract mixin class $AuthStatusCopyWith<$Res>  {
  factory $AuthStatusCopyWith(AuthStatus value, $Res Function(AuthStatus) _then) = _$AuthStatusCopyWithImpl;
@useResult
$Res call({
 UserId userId, bool isAnonymous, bool linkedGoogle, bool linkedApple
});




}
/// @nodoc
class _$AuthStatusCopyWithImpl<$Res>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._self, this._then);

  final AuthStatus _self;
  final $Res Function(AuthStatus) _then;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? isAnonymous = null,Object? linkedGoogle = null,Object? linkedApple = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,linkedGoogle: null == linkedGoogle ? _self.linkedGoogle : linkedGoogle // ignore: cast_nullable_to_non_nullable
as bool,linkedApple: null == linkedApple ? _self.linkedApple : linkedApple // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthStatus].
extension AuthStatusPatterns on AuthStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthStatus value)  $default,){
final _that = this;
switch (_that) {
case _AuthStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AuthStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserId userId,  bool isAnonymous,  bool linkedGoogle,  bool linkedApple)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthStatus() when $default != null:
return $default(_that.userId,_that.isAnonymous,_that.linkedGoogle,_that.linkedApple);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserId userId,  bool isAnonymous,  bool linkedGoogle,  bool linkedApple)  $default,) {final _that = this;
switch (_that) {
case _AuthStatus():
return $default(_that.userId,_that.isAnonymous,_that.linkedGoogle,_that.linkedApple);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserId userId,  bool isAnonymous,  bool linkedGoogle,  bool linkedApple)?  $default,) {final _that = this;
switch (_that) {
case _AuthStatus() when $default != null:
return $default(_that.userId,_that.isAnonymous,_that.linkedGoogle,_that.linkedApple);case _:
  return null;

}
}

}

/// @nodoc


class _AuthStatus implements AuthStatus {
  const _AuthStatus({required this.userId, required this.isAnonymous, required this.linkedGoogle, required this.linkedApple});
  

@override final  UserId userId;
@override final  bool isAnonymous;
@override final  bool linkedGoogle;
@override final  bool linkedApple;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStatusCopyWith<_AuthStatus> get copyWith => __$AuthStatusCopyWithImpl<_AuthStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthStatus&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.linkedGoogle, linkedGoogle) || other.linkedGoogle == linkedGoogle)&&(identical(other.linkedApple, linkedApple) || other.linkedApple == linkedApple));
}


@override
int get hashCode => Object.hash(runtimeType,userId,isAnonymous,linkedGoogle,linkedApple);

@override
String toString() {
  return 'AuthStatus(userId: $userId, isAnonymous: $isAnonymous, linkedGoogle: $linkedGoogle, linkedApple: $linkedApple)';
}


}

/// @nodoc
abstract mixin class _$AuthStatusCopyWith<$Res> implements $AuthStatusCopyWith<$Res> {
  factory _$AuthStatusCopyWith(_AuthStatus value, $Res Function(_AuthStatus) _then) = __$AuthStatusCopyWithImpl;
@override @useResult
$Res call({
 UserId userId, bool isAnonymous, bool linkedGoogle, bool linkedApple
});




}
/// @nodoc
class __$AuthStatusCopyWithImpl<$Res>
    implements _$AuthStatusCopyWith<$Res> {
  __$AuthStatusCopyWithImpl(this._self, this._then);

  final _AuthStatus _self;
  final $Res Function(_AuthStatus) _then;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? isAnonymous = null,Object? linkedGoogle = null,Object? linkedApple = null,}) {
  return _then(_AuthStatus(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,linkedGoogle: null == linkedGoogle ? _self.linkedGoogle : linkedGoogle // ignore: cast_nullable_to_non_nullable
as bool,linkedApple: null == linkedApple ? _self.linkedApple : linkedApple // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
