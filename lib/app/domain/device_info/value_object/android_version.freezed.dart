// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'android_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AndroidVersion {
  String? get baseOS => throw _privateConstructorUsedError;
  String get codename => throw _privateConstructorUsedError;
  String get incremental => throw _privateConstructorUsedError;
  int? get previewSdkInt => throw _privateConstructorUsedError;
  String get release => throw _privateConstructorUsedError;
  int get sdkInt => throw _privateConstructorUsedError;

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AndroidVersionCopyWith<AndroidVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AndroidVersionCopyWith<$Res> {
  factory $AndroidVersionCopyWith(
          AndroidVersion value, $Res Function(AndroidVersion) then) =
      _$AndroidVersionCopyWithImpl<$Res, AndroidVersion>;
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
class _$AndroidVersionCopyWithImpl<$Res, $Val extends AndroidVersion>
    implements $AndroidVersionCopyWith<$Res> {
  _$AndroidVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      baseOS: freezed == baseOS
          ? _value.baseOS
          : baseOS // ignore: cast_nullable_to_non_nullable
              as String?,
      codename: null == codename
          ? _value.codename
          : codename // ignore: cast_nullable_to_non_nullable
              as String,
      incremental: null == incremental
          ? _value.incremental
          : incremental // ignore: cast_nullable_to_non_nullable
              as String,
      previewSdkInt: freezed == previewSdkInt
          ? _value.previewSdkInt
          : previewSdkInt // ignore: cast_nullable_to_non_nullable
              as int?,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      sdkInt: null == sdkInt
          ? _value.sdkInt
          : sdkInt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AndroidVersionImplCopyWith<$Res>
    implements $AndroidVersionCopyWith<$Res> {
  factory _$$AndroidVersionImplCopyWith(_$AndroidVersionImpl value,
          $Res Function(_$AndroidVersionImpl) then) =
      __$$AndroidVersionImplCopyWithImpl<$Res>;
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
class __$$AndroidVersionImplCopyWithImpl<$Res>
    extends _$AndroidVersionCopyWithImpl<$Res, _$AndroidVersionImpl>
    implements _$$AndroidVersionImplCopyWith<$Res> {
  __$$AndroidVersionImplCopyWithImpl(
      _$AndroidVersionImpl _value, $Res Function(_$AndroidVersionImpl) _then)
      : super(_value, _then);

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
    return _then(_$AndroidVersionImpl(
      baseOS: freezed == baseOS
          ? _value.baseOS
          : baseOS // ignore: cast_nullable_to_non_nullable
              as String?,
      codename: null == codename
          ? _value.codename
          : codename // ignore: cast_nullable_to_non_nullable
              as String,
      incremental: null == incremental
          ? _value.incremental
          : incremental // ignore: cast_nullable_to_non_nullable
              as String,
      previewSdkInt: freezed == previewSdkInt
          ? _value.previewSdkInt
          : previewSdkInt // ignore: cast_nullable_to_non_nullable
              as int?,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      sdkInt: null == sdkInt
          ? _value.sdkInt
          : sdkInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AndroidVersionImpl implements _AndroidVersion {
  const _$AndroidVersionImpl(
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

  @override
  String toString() {
    return 'AndroidVersion(baseOS: $baseOS, codename: $codename, incremental: $incremental, previewSdkInt: $previewSdkInt, release: $release, sdkInt: $sdkInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidVersionImpl &&
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

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidVersionImplCopyWith<_$AndroidVersionImpl> get copyWith =>
      __$$AndroidVersionImplCopyWithImpl<_$AndroidVersionImpl>(
          this, _$identity);
}

abstract class _AndroidVersion implements AndroidVersion {
  const factory _AndroidVersion(
      {final String? baseOS,
      required final String codename,
      required final String incremental,
      final int? previewSdkInt,
      required final String release,
      required final int sdkInt}) = _$AndroidVersionImpl;

  @override
  String? get baseOS;
  @override
  String get codename;
  @override
  String get incremental;
  @override
  int? get previewSdkInt;
  @override
  String get release;
  @override
  int get sdkInt;

  /// Create a copy of AndroidVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AndroidVersionImplCopyWith<_$AndroidVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
