// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'android_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AndroidInfo {
  AndroidVersion get version => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AndroidInfoCopyWith<AndroidInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AndroidInfoCopyWith<$Res> {
  factory $AndroidInfoCopyWith(
          AndroidInfo value, $Res Function(AndroidInfo) then) =
      _$AndroidInfoCopyWithImpl<$Res, AndroidInfo>;
  @useResult
  $Res call({AndroidVersion version, String brand, String device});

  $AndroidVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$AndroidInfoCopyWithImpl<$Res, $Val extends AndroidInfo>
    implements $AndroidInfoCopyWith<$Res> {
  _$AndroidInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? brand = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as AndroidVersion,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AndroidVersionCopyWith<$Res> get version {
    return $AndroidVersionCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AndroidInfoImplCopyWith<$Res>
    implements $AndroidInfoCopyWith<$Res> {
  factory _$$AndroidInfoImplCopyWith(
          _$AndroidInfoImpl value, $Res Function(_$AndroidInfoImpl) then) =
      __$$AndroidInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AndroidVersion version, String brand, String device});

  @override
  $AndroidVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$$AndroidInfoImplCopyWithImpl<$Res>
    extends _$AndroidInfoCopyWithImpl<$Res, _$AndroidInfoImpl>
    implements _$$AndroidInfoImplCopyWith<$Res> {
  __$$AndroidInfoImplCopyWithImpl(
      _$AndroidInfoImpl _value, $Res Function(_$AndroidInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? brand = null,
    Object? device = null,
  }) {
    return _then(_$AndroidInfoImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as AndroidVersion,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AndroidInfoImpl implements _AndroidInfo {
  const _$AndroidInfoImpl(
      {required this.version, required this.brand, required this.device});

  @override
  final AndroidVersion version;
  @override
  final String brand;
  @override
  final String device;

  @override
  String toString() {
    return 'AndroidInfo(version: $version, brand: $brand, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidInfoImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, brand, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidInfoImplCopyWith<_$AndroidInfoImpl> get copyWith =>
      __$$AndroidInfoImplCopyWithImpl<_$AndroidInfoImpl>(this, _$identity);
}

abstract class _AndroidInfo implements AndroidInfo {
  const factory _AndroidInfo(
      {required final AndroidVersion version,
      required final String brand,
      required final String device}) = _$AndroidInfoImpl;

  @override
  AndroidVersion get version;
  @override
  String get brand;
  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$AndroidInfoImplCopyWith<_$AndroidInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
