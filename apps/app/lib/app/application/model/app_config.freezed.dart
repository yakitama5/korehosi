// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfig {
  Flavor get flavor;
  String get appName;
  String get packageName;
  String get bundleId;
  String get appStoreId;
  String get webUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<AppConfig> get copyWith =>
      _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppConfig &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.bundleId, bundleId) ||
                other.bundleId == bundleId) &&
            (identical(other.appStoreId, appStoreId) ||
                other.appStoreId == appStoreId) &&
            (identical(other.webUrl, webUrl) || other.webUrl == webUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, flavor, appName, packageName, bundleId, appStoreId, webUrl);

  @override
  String toString() {
    return 'AppConfig(flavor: $flavor, appName: $appName, packageName: $packageName, bundleId: $bundleId, appStoreId: $appStoreId, webUrl: $webUrl)';
  }
}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) =
      _$AppConfigCopyWithImpl;
  @useResult
  $Res call(
      {Flavor flavor,
      String appName,
      String packageName,
      String bundleId,
      String appStoreId,
      String webUrl});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? appName = null,
    Object? packageName = null,
    Object? bundleId = null,
    Object? appStoreId = null,
    Object? webUrl = null,
  }) {
    return _then(_self.copyWith(
      flavor: null == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      bundleId: null == bundleId
          ? _self.bundleId
          : bundleId // ignore: cast_nullable_to_non_nullable
              as String,
      appStoreId: null == appStoreId
          ? _self.appStoreId
          : appStoreId // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: null == webUrl
          ? _self.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppConfig].
extension AppConfigPatterns on AppConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Flavor flavor, String appName, String packageName,
            String bundleId, String appStoreId, String webUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppConfig() when $default != null:
        return $default(_that.flavor, _that.appName, _that.packageName,
            _that.bundleId, _that.appStoreId, _that.webUrl);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Flavor flavor, String appName, String packageName,
            String bundleId, String appStoreId, String webUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppConfig():
        return $default(_that.flavor, _that.appName, _that.packageName,
            _that.bundleId, _that.appStoreId, _that.webUrl);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Flavor flavor, String appName, String packageName,
            String bundleId, String appStoreId, String webUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppConfig() when $default != null:
        return $default(_that.flavor, _that.appName, _that.packageName,
            _that.bundleId, _that.appStoreId, _that.webUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AppConfig implements AppConfig {
  const _AppConfig(
      {required this.flavor,
      required this.appName,
      required this.packageName,
      required this.bundleId,
      required this.appStoreId,
      required this.webUrl});

  @override
  final Flavor flavor;
  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String bundleId;
  @override
  final String appStoreId;
  @override
  final String webUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfig &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.bundleId, bundleId) ||
                other.bundleId == bundleId) &&
            (identical(other.appStoreId, appStoreId) ||
                other.appStoreId == appStoreId) &&
            (identical(other.webUrl, webUrl) || other.webUrl == webUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, flavor, appName, packageName, bundleId, appStoreId, webUrl);

  @override
  String toString() {
    return 'AppConfig(flavor: $flavor, appName: $appName, packageName: $packageName, bundleId: $bundleId, appStoreId: $appStoreId, webUrl: $webUrl)';
  }
}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) _then) =
      __$AppConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Flavor flavor,
      String appName,
      String packageName,
      String bundleId,
      String appStoreId,
      String webUrl});
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flavor = null,
    Object? appName = null,
    Object? packageName = null,
    Object? bundleId = null,
    Object? appStoreId = null,
    Object? webUrl = null,
  }) {
    return _then(_AppConfig(
      flavor: null == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      bundleId: null == bundleId
          ? _self.bundleId
          : bundleId // ignore: cast_nullable_to_non_nullable
              as String,
      appStoreId: null == appStoreId
          ? _self.appStoreId
          : appStoreId // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: null == webUrl
          ? _self.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
