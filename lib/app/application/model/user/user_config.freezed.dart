// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserConfig {
  AgeGroup get initialAgeGroup;
  String get nameKey;
  String get ageGroupKey;
  int get maxNameLength;

  /// Create a copy of UserConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserConfigCopyWith<UserConfig> get copyWith =>
      _$UserConfigCopyWithImpl<UserConfig>(this as UserConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserConfig &&
            (identical(other.initialAgeGroup, initialAgeGroup) ||
                other.initialAgeGroup == initialAgeGroup) &&
            (identical(other.nameKey, nameKey) || other.nameKey == nameKey) &&
            (identical(other.ageGroupKey, ageGroupKey) ||
                other.ageGroupKey == ageGroupKey) &&
            (identical(other.maxNameLength, maxNameLength) ||
                other.maxNameLength == maxNameLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, initialAgeGroup, nameKey, ageGroupKey, maxNameLength);

  @override
  String toString() {
    return 'UserConfig(initialAgeGroup: $initialAgeGroup, nameKey: $nameKey, ageGroupKey: $ageGroupKey, maxNameLength: $maxNameLength)';
  }
}

/// @nodoc
abstract mixin class $UserConfigCopyWith<$Res> {
  factory $UserConfigCopyWith(
          UserConfig value, $Res Function(UserConfig) _then) =
      _$UserConfigCopyWithImpl;
  @useResult
  $Res call(
      {AgeGroup initialAgeGroup,
      String nameKey,
      String ageGroupKey,
      int maxNameLength});
}

/// @nodoc
class _$UserConfigCopyWithImpl<$Res> implements $UserConfigCopyWith<$Res> {
  _$UserConfigCopyWithImpl(this._self, this._then);

  final UserConfig _self;
  final $Res Function(UserConfig) _then;

  /// Create a copy of UserConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAgeGroup = null,
    Object? nameKey = null,
    Object? ageGroupKey = null,
    Object? maxNameLength = null,
  }) {
    return _then(_self.copyWith(
      initialAgeGroup: null == initialAgeGroup
          ? _self.initialAgeGroup
          : initialAgeGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      nameKey: null == nameKey
          ? _self.nameKey
          : nameKey // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroupKey: null == ageGroupKey
          ? _self.ageGroupKey
          : ageGroupKey // ignore: cast_nullable_to_non_nullable
              as String,
      maxNameLength: null == maxNameLength
          ? _self.maxNameLength
          : maxNameLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserConfig].
extension UserConfigPatterns on UserConfig {
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
    TResult Function(_UserConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserConfig() when $default != null:
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
    TResult Function(_UserConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserConfig():
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
    TResult? Function(_UserConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserConfig() when $default != null:
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
    TResult Function(AgeGroup initialAgeGroup, String nameKey,
            String ageGroupKey, int maxNameLength)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserConfig() when $default != null:
        return $default(_that.initialAgeGroup, _that.nameKey, _that.ageGroupKey,
            _that.maxNameLength);
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
    TResult Function(AgeGroup initialAgeGroup, String nameKey,
            String ageGroupKey, int maxNameLength)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserConfig():
        return $default(_that.initialAgeGroup, _that.nameKey, _that.ageGroupKey,
            _that.maxNameLength);
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
    TResult? Function(AgeGroup initialAgeGroup, String nameKey,
            String ageGroupKey, int maxNameLength)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserConfig() when $default != null:
        return $default(_that.initialAgeGroup, _that.nameKey, _that.ageGroupKey,
            _that.maxNameLength);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserConfig implements UserConfig {
  const _UserConfig(
      {required this.initialAgeGroup,
      required this.nameKey,
      required this.ageGroupKey,
      required this.maxNameLength});

  @override
  final AgeGroup initialAgeGroup;
  @override
  final String nameKey;
  @override
  final String ageGroupKey;
  @override
  final int maxNameLength;

  /// Create a copy of UserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserConfigCopyWith<_UserConfig> get copyWith =>
      __$UserConfigCopyWithImpl<_UserConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserConfig &&
            (identical(other.initialAgeGroup, initialAgeGroup) ||
                other.initialAgeGroup == initialAgeGroup) &&
            (identical(other.nameKey, nameKey) || other.nameKey == nameKey) &&
            (identical(other.ageGroupKey, ageGroupKey) ||
                other.ageGroupKey == ageGroupKey) &&
            (identical(other.maxNameLength, maxNameLength) ||
                other.maxNameLength == maxNameLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, initialAgeGroup, nameKey, ageGroupKey, maxNameLength);

  @override
  String toString() {
    return 'UserConfig(initialAgeGroup: $initialAgeGroup, nameKey: $nameKey, ageGroupKey: $ageGroupKey, maxNameLength: $maxNameLength)';
  }
}

/// @nodoc
abstract mixin class _$UserConfigCopyWith<$Res>
    implements $UserConfigCopyWith<$Res> {
  factory _$UserConfigCopyWith(
          _UserConfig value, $Res Function(_UserConfig) _then) =
      __$UserConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AgeGroup initialAgeGroup,
      String nameKey,
      String ageGroupKey,
      int maxNameLength});
}

/// @nodoc
class __$UserConfigCopyWithImpl<$Res> implements _$UserConfigCopyWith<$Res> {
  __$UserConfigCopyWithImpl(this._self, this._then);

  final _UserConfig _self;
  final $Res Function(_UserConfig) _then;

  /// Create a copy of UserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? initialAgeGroup = null,
    Object? nameKey = null,
    Object? ageGroupKey = null,
    Object? maxNameLength = null,
  }) {
    return _then(_UserConfig(
      initialAgeGroup: null == initialAgeGroup
          ? _self.initialAgeGroup
          : initialAgeGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      nameKey: null == nameKey
          ? _self.nameKey
          : nameKey // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroupKey: null == ageGroupKey
          ? _self.ageGroupKey
          : ageGroupKey // ignore: cast_nullable_to_non_nullable
              as String,
      maxNameLength: null == maxNameLength
          ? _self.maxNameLength
          : maxNameLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
