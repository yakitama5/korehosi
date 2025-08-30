// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'android_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AndroidInfo {
  AndroidVersion get version;
  String get brand;
  String get device;

  /// Create a copy of AndroidInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AndroidInfoCopyWith<AndroidInfo> get copyWith =>
      _$AndroidInfoCopyWithImpl<AndroidInfo>(this as AndroidInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AndroidInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, brand, device);

  @override
  String toString() {
    return 'AndroidInfo(version: $version, brand: $brand, device: $device)';
  }
}

/// @nodoc
abstract mixin class $AndroidInfoCopyWith<$Res> {
  factory $AndroidInfoCopyWith(
          AndroidInfo value, $Res Function(AndroidInfo) _then) =
      _$AndroidInfoCopyWithImpl;
  @useResult
  $Res call({AndroidVersion version, String brand, String device});

  $AndroidVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$AndroidInfoCopyWithImpl<$Res> implements $AndroidInfoCopyWith<$Res> {
  _$AndroidInfoCopyWithImpl(this._self, this._then);

  final AndroidInfo _self;
  final $Res Function(AndroidInfo) _then;

  /// Create a copy of AndroidInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? brand = null,
    Object? device = null,
  }) {
    return _then(_self.copyWith(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as AndroidVersion,
      brand: null == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AndroidInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AndroidVersionCopyWith<$Res> get version {
    return $AndroidVersionCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AndroidInfo].
extension AndroidInfoPatterns on AndroidInfo {
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
    TResult Function(_AndroidInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AndroidInfo() when $default != null:
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
    TResult Function(_AndroidInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidInfo():
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
    TResult? Function(_AndroidInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidInfo() when $default != null:
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
    TResult Function(AndroidVersion version, String brand, String device)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AndroidInfo() when $default != null:
        return $default(_that.version, _that.brand, _that.device);
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
    TResult Function(AndroidVersion version, String brand, String device)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidInfo():
        return $default(_that.version, _that.brand, _that.device);
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
    TResult? Function(AndroidVersion version, String brand, String device)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidInfo() when $default != null:
        return $default(_that.version, _that.brand, _that.device);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AndroidInfo implements AndroidInfo {
  const _AndroidInfo(
      {required this.version, required this.brand, required this.device});

  @override
  final AndroidVersion version;
  @override
  final String brand;
  @override
  final String device;

  /// Create a copy of AndroidInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AndroidInfoCopyWith<_AndroidInfo> get copyWith =>
      __$AndroidInfoCopyWithImpl<_AndroidInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AndroidInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, brand, device);

  @override
  String toString() {
    return 'AndroidInfo(version: $version, brand: $brand, device: $device)';
  }
}

/// @nodoc
abstract mixin class _$AndroidInfoCopyWith<$Res>
    implements $AndroidInfoCopyWith<$Res> {
  factory _$AndroidInfoCopyWith(
          _AndroidInfo value, $Res Function(_AndroidInfo) _then) =
      __$AndroidInfoCopyWithImpl;
  @override
  @useResult
  $Res call({AndroidVersion version, String brand, String device});

  @override
  $AndroidVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$AndroidInfoCopyWithImpl<$Res> implements _$AndroidInfoCopyWith<$Res> {
  __$AndroidInfoCopyWithImpl(this._self, this._then);

  final _AndroidInfo _self;
  final $Res Function(_AndroidInfo) _then;

  /// Create a copy of AndroidInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
    Object? brand = null,
    Object? device = null,
  }) {
    return _then(_AndroidInfo(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as AndroidVersion,
      brand: null == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AndroidInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AndroidVersionCopyWith<$Res> get version {
    return $AndroidVersionCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

// dart format on
