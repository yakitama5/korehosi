// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_build_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppBuildConfig {

 Flavor get flavor; String get appName; String get packageName; Version get version; String get buildNumber; String get buildSignature; String? get installerStore;
/// Create a copy of AppBuildConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppBuildConfigCopyWith<AppBuildConfig> get copyWith => _$AppBuildConfigCopyWithImpl<AppBuildConfig>(this as AppBuildConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppBuildConfig&&(identical(other.flavor, flavor) || other.flavor == flavor)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.buildSignature, buildSignature) || other.buildSignature == buildSignature)&&(identical(other.installerStore, installerStore) || other.installerStore == installerStore));
}


@override
int get hashCode => Object.hash(runtimeType,flavor,appName,packageName,version,buildNumber,buildSignature,installerStore);

@override
String toString() {
  return 'AppBuildConfig(flavor: $flavor, appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, installerStore: $installerStore)';
}


}

/// @nodoc
abstract mixin class $AppBuildConfigCopyWith<$Res>  {
  factory $AppBuildConfigCopyWith(AppBuildConfig value, $Res Function(AppBuildConfig) _then) = _$AppBuildConfigCopyWithImpl;
@useResult
$Res call({
 Flavor flavor, String appName, String packageName, Version version, String buildNumber, String buildSignature, String? installerStore
});




}
/// @nodoc
class _$AppBuildConfigCopyWithImpl<$Res>
    implements $AppBuildConfigCopyWith<$Res> {
  _$AppBuildConfigCopyWithImpl(this._self, this._then);

  final AppBuildConfig _self;
  final $Res Function(AppBuildConfig) _then;

/// Create a copy of AppBuildConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flavor = null,Object? appName = null,Object? packageName = null,Object? version = null,Object? buildNumber = null,Object? buildSignature = null,Object? installerStore = freezed,}) {
  return _then(_self.copyWith(
flavor: null == flavor ? _self.flavor : flavor // ignore: cast_nullable_to_non_nullable
as Flavor,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,buildSignature: null == buildSignature ? _self.buildSignature : buildSignature // ignore: cast_nullable_to_non_nullable
as String,installerStore: freezed == installerStore ? _self.installerStore : installerStore // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppBuildConfig].
extension AppBuildConfigPatterns on AppBuildConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppBuildConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppBuildConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppBuildConfig value)  $default,){
final _that = this;
switch (_that) {
case _AppBuildConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppBuildConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AppBuildConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Flavor flavor,  String appName,  String packageName,  Version version,  String buildNumber,  String buildSignature,  String? installerStore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppBuildConfig() when $default != null:
return $default(_that.flavor,_that.appName,_that.packageName,_that.version,_that.buildNumber,_that.buildSignature,_that.installerStore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Flavor flavor,  String appName,  String packageName,  Version version,  String buildNumber,  String buildSignature,  String? installerStore)  $default,) {final _that = this;
switch (_that) {
case _AppBuildConfig():
return $default(_that.flavor,_that.appName,_that.packageName,_that.version,_that.buildNumber,_that.buildSignature,_that.installerStore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Flavor flavor,  String appName,  String packageName,  Version version,  String buildNumber,  String buildSignature,  String? installerStore)?  $default,) {final _that = this;
switch (_that) {
case _AppBuildConfig() when $default != null:
return $default(_that.flavor,_that.appName,_that.packageName,_that.version,_that.buildNumber,_that.buildSignature,_that.installerStore);case _:
  return null;

}
}

}

/// @nodoc


class _AppBuildConfig implements AppBuildConfig {
  const _AppBuildConfig({required this.flavor, required this.appName, required this.packageName, required this.version, required this.buildNumber, required this.buildSignature, this.installerStore});
  

@override final  Flavor flavor;
@override final  String appName;
@override final  String packageName;
@override final  Version version;
@override final  String buildNumber;
@override final  String buildSignature;
@override final  String? installerStore;

/// Create a copy of AppBuildConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppBuildConfigCopyWith<_AppBuildConfig> get copyWith => __$AppBuildConfigCopyWithImpl<_AppBuildConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppBuildConfig&&(identical(other.flavor, flavor) || other.flavor == flavor)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.buildSignature, buildSignature) || other.buildSignature == buildSignature)&&(identical(other.installerStore, installerStore) || other.installerStore == installerStore));
}


@override
int get hashCode => Object.hash(runtimeType,flavor,appName,packageName,version,buildNumber,buildSignature,installerStore);

@override
String toString() {
  return 'AppBuildConfig(flavor: $flavor, appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, installerStore: $installerStore)';
}


}

/// @nodoc
abstract mixin class _$AppBuildConfigCopyWith<$Res> implements $AppBuildConfigCopyWith<$Res> {
  factory _$AppBuildConfigCopyWith(_AppBuildConfig value, $Res Function(_AppBuildConfig) _then) = __$AppBuildConfigCopyWithImpl;
@override @useResult
$Res call({
 Flavor flavor, String appName, String packageName, Version version, String buildNumber, String buildSignature, String? installerStore
});




}
/// @nodoc
class __$AppBuildConfigCopyWithImpl<$Res>
    implements _$AppBuildConfigCopyWith<$Res> {
  __$AppBuildConfigCopyWithImpl(this._self, this._then);

  final _AppBuildConfig _self;
  final $Res Function(_AppBuildConfig) _then;

/// Create a copy of AppBuildConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flavor = null,Object? appName = null,Object? packageName = null,Object? version = null,Object? buildNumber = null,Object? buildSignature = null,Object? installerStore = freezed,}) {
  return _then(_AppBuildConfig(
flavor: null == flavor ? _self.flavor : flavor // ignore: cast_nullable_to_non_nullable
as Flavor,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,buildSignature: null == buildSignature ? _self.buildSignature : buildSignature // ignore: cast_nullable_to_non_nullable
as String,installerStore: freezed == installerStore ? _self.installerStore : installerStore // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
