// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WebAppConfig {

 String get appWebUrL;
/// Create a copy of WebAppConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebAppConfigCopyWith<WebAppConfig> get copyWith => _$WebAppConfigCopyWithImpl<WebAppConfig>(this as WebAppConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebAppConfig&&(identical(other.appWebUrL, appWebUrL) || other.appWebUrL == appWebUrL));
}


@override
int get hashCode => Object.hash(runtimeType,appWebUrL);

@override
String toString() {
  return 'WebAppConfig(appWebUrL: $appWebUrL)';
}


}

/// @nodoc
abstract mixin class $WebAppConfigCopyWith<$Res>  {
  factory $WebAppConfigCopyWith(WebAppConfig value, $Res Function(WebAppConfig) _then) = _$WebAppConfigCopyWithImpl;
@useResult
$Res call({
 String appWebUrL
});




}
/// @nodoc
class _$WebAppConfigCopyWithImpl<$Res>
    implements $WebAppConfigCopyWith<$Res> {
  _$WebAppConfigCopyWithImpl(this._self, this._then);

  final WebAppConfig _self;
  final $Res Function(WebAppConfig) _then;

/// Create a copy of WebAppConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appWebUrL = null,}) {
  return _then(_self.copyWith(
appWebUrL: null == appWebUrL ? _self.appWebUrL : appWebUrL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WebAppConfig].
extension WebAppConfigPatterns on WebAppConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebAppConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebAppConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebAppConfig value)  $default,){
final _that = this;
switch (_that) {
case _WebAppConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebAppConfig value)?  $default,){
final _that = this;
switch (_that) {
case _WebAppConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appWebUrL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebAppConfig() when $default != null:
return $default(_that.appWebUrL);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appWebUrL)  $default,) {final _that = this;
switch (_that) {
case _WebAppConfig():
return $default(_that.appWebUrL);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appWebUrL)?  $default,) {final _that = this;
switch (_that) {
case _WebAppConfig() when $default != null:
return $default(_that.appWebUrL);case _:
  return null;

}
}

}

/// @nodoc


class _WebAppConfig implements WebAppConfig {
  const _WebAppConfig({required this.appWebUrL});
  

@override final  String appWebUrL;

/// Create a copy of WebAppConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebAppConfigCopyWith<_WebAppConfig> get copyWith => __$WebAppConfigCopyWithImpl<_WebAppConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebAppConfig&&(identical(other.appWebUrL, appWebUrL) || other.appWebUrL == appWebUrL));
}


@override
int get hashCode => Object.hash(runtimeType,appWebUrL);

@override
String toString() {
  return 'WebAppConfig(appWebUrL: $appWebUrL)';
}


}

/// @nodoc
abstract mixin class _$WebAppConfigCopyWith<$Res> implements $WebAppConfigCopyWith<$Res> {
  factory _$WebAppConfigCopyWith(_WebAppConfig value, $Res Function(_WebAppConfig) _then) = __$WebAppConfigCopyWithImpl;
@override @useResult
$Res call({
 String appWebUrL
});




}
/// @nodoc
class __$WebAppConfigCopyWithImpl<$Res>
    implements _$WebAppConfigCopyWith<$Res> {
  __$WebAppConfigCopyWithImpl(this._self, this._then);

  final _WebAppConfig _self;
  final $Res Function(_WebAppConfig) _then;

/// Create a copy of WebAppConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appWebUrL = null,}) {
  return _then(_WebAppConfig(
appWebUrL: null == appWebUrL ? _self.appWebUrL : appWebUrL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
