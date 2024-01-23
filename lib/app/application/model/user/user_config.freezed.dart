// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserConfig {
  AgeGroup get initialAgeGroup => throw _privateConstructorUsedError;
  String get nameKey => throw _privateConstructorUsedError;
  String get ageGroupKey => throw _privateConstructorUsedError;
  int get maxNameLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserConfigCopyWith<UserConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserConfigCopyWith<$Res> {
  factory $UserConfigCopyWith(
          UserConfig value, $Res Function(UserConfig) then) =
      _$UserConfigCopyWithImpl<$Res, UserConfig>;
  @useResult
  $Res call(
      {AgeGroup initialAgeGroup,
      String nameKey,
      String ageGroupKey,
      int maxNameLength});
}

/// @nodoc
class _$UserConfigCopyWithImpl<$Res, $Val extends UserConfig>
    implements $UserConfigCopyWith<$Res> {
  _$UserConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAgeGroup = null,
    Object? nameKey = null,
    Object? ageGroupKey = null,
    Object? maxNameLength = null,
  }) {
    return _then(_value.copyWith(
      initialAgeGroup: null == initialAgeGroup
          ? _value.initialAgeGroup
          : initialAgeGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      nameKey: null == nameKey
          ? _value.nameKey
          : nameKey // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroupKey: null == ageGroupKey
          ? _value.ageGroupKey
          : ageGroupKey // ignore: cast_nullable_to_non_nullable
              as String,
      maxNameLength: null == maxNameLength
          ? _value.maxNameLength
          : maxNameLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserConfigImplCopyWith<$Res>
    implements $UserConfigCopyWith<$Res> {
  factory _$$UserConfigImplCopyWith(
          _$UserConfigImpl value, $Res Function(_$UserConfigImpl) then) =
      __$$UserConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AgeGroup initialAgeGroup,
      String nameKey,
      String ageGroupKey,
      int maxNameLength});
}

/// @nodoc
class __$$UserConfigImplCopyWithImpl<$Res>
    extends _$UserConfigCopyWithImpl<$Res, _$UserConfigImpl>
    implements _$$UserConfigImplCopyWith<$Res> {
  __$$UserConfigImplCopyWithImpl(
      _$UserConfigImpl _value, $Res Function(_$UserConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAgeGroup = null,
    Object? nameKey = null,
    Object? ageGroupKey = null,
    Object? maxNameLength = null,
  }) {
    return _then(_$UserConfigImpl(
      initialAgeGroup: null == initialAgeGroup
          ? _value.initialAgeGroup
          : initialAgeGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      nameKey: null == nameKey
          ? _value.nameKey
          : nameKey // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroupKey: null == ageGroupKey
          ? _value.ageGroupKey
          : ageGroupKey // ignore: cast_nullable_to_non_nullable
              as String,
      maxNameLength: null == maxNameLength
          ? _value.maxNameLength
          : maxNameLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserConfigImpl implements _UserConfig {
  const _$UserConfigImpl(
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

  @override
  String toString() {
    return 'UserConfig(initialAgeGroup: $initialAgeGroup, nameKey: $nameKey, ageGroupKey: $ageGroupKey, maxNameLength: $maxNameLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserConfigImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserConfigImplCopyWith<_$UserConfigImpl> get copyWith =>
      __$$UserConfigImplCopyWithImpl<_$UserConfigImpl>(this, _$identity);
}

abstract class _UserConfig implements UserConfig {
  const factory _UserConfig(
      {required final AgeGroup initialAgeGroup,
      required final String nameKey,
      required final String ageGroupKey,
      required final int maxNameLength}) = _$UserConfigImpl;

  @override
  AgeGroup get initialAgeGroup;
  @override
  String get nameKey;
  @override
  String get ageGroupKey;
  @override
  int get maxNameLength;
  @override
  @JsonKey(ignore: true)
  _$$UserConfigImplCopyWith<_$UserConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
