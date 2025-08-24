// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'android_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AndroidVersion {
  String? get baseOS;
  String get codename;
  String get incremental;
  int? get previewSdkInt;
  String get release;
  int get sdkInt;

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AndroidVersionCopyWith<AndroidVersion> get copyWith =>
      _$AndroidVersionCopyWithImpl<AndroidVersion>(
          this as AndroidVersion, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AndroidVersion &&
            (identical(other.baseOS, baseOS) || other.baseOS == baseOS) &&
            (identical(other.codename, codename) ||
                other.codename == codename) &&
            (identical(other.incremental, incremental) ||
                other.incremental == incremental) &&
            (identical(other.previewSdkInt, previewSdkInt) ||
                other.previewSdkInt == previewSdkInt) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.sdkInt, sdkInt) || other.sdkInt == sdkInt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseOS, codename, incremental,
      previewSdkInt, release, sdkInt);

  @override
  String toString() {
    return 'AndroidVersion(baseOS: $baseOS, codename: $codename, incremental: $incremental, previewSdkInt: $previewSdkInt, release: $release, sdkInt: $sdkInt)';
  }
}

/// @nodoc
abstract mixin class $AndroidVersionCopyWith<$Res> {
  factory $AndroidVersionCopyWith(
          AndroidVersion value, $Res Function(AndroidVersion) _then) =
      _$AndroidVersionCopyWithImpl;
  @useResult
  $Res call(
      {String? baseOS,
      String codename,
      String incremental,
      int? previewSdkInt,
      String release,
      int sdkInt});
}

/// @nodoc
class _$AndroidVersionCopyWithImpl<$Res>
    implements $AndroidVersionCopyWith<$Res> {
  _$AndroidVersionCopyWithImpl(this._self, this._then);

  final AndroidVersion _self;
  final $Res Function(AndroidVersion) _then;

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseOS = freezed,
    Object? codename = null,
    Object? incremental = null,
    Object? previewSdkInt = freezed,
    Object? release = null,
    Object? sdkInt = null,
  }) {
    return _then(_self.copyWith(
      baseOS: freezed == baseOS
          ? _self.baseOS
          : baseOS // ignore: cast_nullable_to_non_nullable
              as String?,
      codename: null == codename
          ? _self.codename
          : codename // ignore: cast_nullable_to_non_nullable
              as String,
      incremental: null == incremental
          ? _self.incremental
          : incremental // ignore: cast_nullable_to_non_nullable
              as String,
      previewSdkInt: freezed == previewSdkInt
          ? _self.previewSdkInt
          : previewSdkInt // ignore: cast_nullable_to_non_nullable
              as int?,
      release: null == release
          ? _self.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      sdkInt: null == sdkInt
          ? _self.sdkInt
          : sdkInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [AndroidVersion].
extension AndroidVersionPatterns on AndroidVersion {
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
    TResult Function(_AndroidVersion value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AndroidVersion() when $default != null:
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
    TResult Function(_AndroidVersion value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidVersion():
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
    TResult? Function(_AndroidVersion value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidVersion() when $default != null:
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
    TResult Function(String? baseOS, String codename, String incremental,
            int? previewSdkInt, String release, int sdkInt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AndroidVersion() when $default != null:
        return $default(_that.baseOS, _that.codename, _that.incremental,
            _that.previewSdkInt, _that.release, _that.sdkInt);
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
    TResult Function(String? baseOS, String codename, String incremental,
            int? previewSdkInt, String release, int sdkInt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidVersion():
        return $default(_that.baseOS, _that.codename, _that.incremental,
            _that.previewSdkInt, _that.release, _that.sdkInt);
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
    TResult? Function(String? baseOS, String codename, String incremental,
            int? previewSdkInt, String release, int sdkInt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AndroidVersion() when $default != null:
        return $default(_that.baseOS, _that.codename, _that.incremental,
            _that.previewSdkInt, _that.release, _that.sdkInt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AndroidVersion implements AndroidVersion {
  const _AndroidVersion(
      {this.baseOS,
      required this.codename,
      required this.incremental,
      this.previewSdkInt,
      required this.release,
      required this.sdkInt});

  @override
  final String? baseOS;
  @override
  final String codename;
  @override
  final String incremental;
  @override
  final int? previewSdkInt;
  @override
  final String release;
  @override
  final int sdkInt;

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AndroidVersionCopyWith<_AndroidVersion> get copyWith =>
      __$AndroidVersionCopyWithImpl<_AndroidVersion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AndroidVersion &&
            (identical(other.baseOS, baseOS) || other.baseOS == baseOS) &&
            (identical(other.codename, codename) ||
                other.codename == codename) &&
            (identical(other.incremental, incremental) ||
                other.incremental == incremental) &&
            (identical(other.previewSdkInt, previewSdkInt) ||
                other.previewSdkInt == previewSdkInt) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.sdkInt, sdkInt) || other.sdkInt == sdkInt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseOS, codename, incremental,
      previewSdkInt, release, sdkInt);

  @override
  String toString() {
    return 'AndroidVersion(baseOS: $baseOS, codename: $codename, incremental: $incremental, previewSdkInt: $previewSdkInt, release: $release, sdkInt: $sdkInt)';
  }
}

/// @nodoc
abstract mixin class _$AndroidVersionCopyWith<$Res>
    implements $AndroidVersionCopyWith<$Res> {
  factory _$AndroidVersionCopyWith(
          _AndroidVersion value, $Res Function(_AndroidVersion) _then) =
      __$AndroidVersionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? baseOS,
      String codename,
      String incremental,
      int? previewSdkInt,
      String release,
      int sdkInt});
}

/// @nodoc
class __$AndroidVersionCopyWithImpl<$Res>
    implements _$AndroidVersionCopyWith<$Res> {
  __$AndroidVersionCopyWithImpl(this._self, this._then);

  final _AndroidVersion _self;
  final $Res Function(_AndroidVersion) _then;

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? baseOS = freezed,
    Object? codename = null,
    Object? incremental = null,
    Object? previewSdkInt = freezed,
    Object? release = null,
    Object? sdkInt = null,
  }) {
    return _then(_AndroidVersion(
      baseOS: freezed == baseOS
          ? _self.baseOS
          : baseOS // ignore: cast_nullable_to_non_nullable
              as String?,
      codename: null == codename
          ? _self.codename
          : codename // ignore: cast_nullable_to_non_nullable
              as String,
      incremental: null == incremental
          ? _self.incremental
          : incremental // ignore: cast_nullable_to_non_nullable
              as String,
      previewSdkInt: freezed == previewSdkInt
          ? _self.previewSdkInt
          : previewSdkInt // ignore: cast_nullable_to_non_nullable
              as int?,
      release: null == release
          ? _self.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      sdkInt: null == sdkInt
          ? _self.sdkInt
          : sdkInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
