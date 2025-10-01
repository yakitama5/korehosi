// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apple_store_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppleStoreConfig {

 String get bundleId; String get appStoreId;
/// Create a copy of AppleStoreConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppleStoreConfigCopyWith<AppleStoreConfig> get copyWith => _$AppleStoreConfigCopyWithImpl<AppleStoreConfig>(this as AppleStoreConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppleStoreConfig&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.appStoreId, appStoreId) || other.appStoreId == appStoreId));
}


@override
int get hashCode => Object.hash(runtimeType,bundleId,appStoreId);

@override
String toString() {
  return 'AppleStoreConfig(bundleId: $bundleId, appStoreId: $appStoreId)';
}


}

/// @nodoc
abstract mixin class $AppleStoreConfigCopyWith<$Res>  {
  factory $AppleStoreConfigCopyWith(AppleStoreConfig value, $Res Function(AppleStoreConfig) _then) = _$AppleStoreConfigCopyWithImpl;
@useResult
$Res call({
 String bundleId, String appStoreId
});




}
/// @nodoc
class _$AppleStoreConfigCopyWithImpl<$Res>
    implements $AppleStoreConfigCopyWith<$Res> {
  _$AppleStoreConfigCopyWithImpl(this._self, this._then);

  final AppleStoreConfig _self;
  final $Res Function(AppleStoreConfig) _then;

/// Create a copy of AppleStoreConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bundleId = null,Object? appStoreId = null,}) {
  return _then(_self.copyWith(
bundleId: null == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String,appStoreId: null == appStoreId ? _self.appStoreId : appStoreId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppleStoreConfig].
extension AppleStoreConfigPatterns on AppleStoreConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppleStoreConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppleStoreConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppleStoreConfig value)  $default,){
final _that = this;
switch (_that) {
case _AppleStoreConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppleStoreConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AppleStoreConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bundleId,  String appStoreId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppleStoreConfig() when $default != null:
return $default(_that.bundleId,_that.appStoreId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bundleId,  String appStoreId)  $default,) {final _that = this;
switch (_that) {
case _AppleStoreConfig():
return $default(_that.bundleId,_that.appStoreId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bundleId,  String appStoreId)?  $default,) {final _that = this;
switch (_that) {
case _AppleStoreConfig() when $default != null:
return $default(_that.bundleId,_that.appStoreId);case _:
  return null;

}
}

}

/// @nodoc


class _AppleStoreConfig implements AppleStoreConfig {
  const _AppleStoreConfig({required this.bundleId, required this.appStoreId});
  

@override final  String bundleId;
@override final  String appStoreId;

/// Create a copy of AppleStoreConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppleStoreConfigCopyWith<_AppleStoreConfig> get copyWith => __$AppleStoreConfigCopyWithImpl<_AppleStoreConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppleStoreConfig&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.appStoreId, appStoreId) || other.appStoreId == appStoreId));
}


@override
int get hashCode => Object.hash(runtimeType,bundleId,appStoreId);

@override
String toString() {
  return 'AppleStoreConfig(bundleId: $bundleId, appStoreId: $appStoreId)';
}


}

/// @nodoc
abstract mixin class _$AppleStoreConfigCopyWith<$Res> implements $AppleStoreConfigCopyWith<$Res> {
  factory _$AppleStoreConfigCopyWith(_AppleStoreConfig value, $Res Function(_AppleStoreConfig) _then) = __$AppleStoreConfigCopyWithImpl;
@override @useResult
$Res call({
 String bundleId, String appStoreId
});




}
/// @nodoc
class __$AppleStoreConfigCopyWithImpl<$Res>
    implements _$AppleStoreConfigCopyWith<$Res> {
  __$AppleStoreConfigCopyWithImpl(this._self, this._then);

  final _AppleStoreConfig _self;
  final $Res Function(_AppleStoreConfig) _then;

/// Create a copy of AppleStoreConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bundleId = null,Object? appStoreId = null,}) {
  return _then(_AppleStoreConfig(
bundleId: null == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String,appStoreId: null == appStoreId ? _self.appStoreId : appStoreId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
