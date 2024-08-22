// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'functions_join_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FunctionsJoinGroupResponse _$FunctionsJoinGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _FunctionsJoinGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$FunctionsJoinGroupResponse {
  String? get errorCode => throw _privateConstructorUsedError;

  /// Serializes this FunctionsJoinGroupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FunctionsJoinGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FunctionsJoinGroupResponseCopyWith<FunctionsJoinGroupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionsJoinGroupResponseCopyWith<$Res> {
  factory $FunctionsJoinGroupResponseCopyWith(FunctionsJoinGroupResponse value,
          $Res Function(FunctionsJoinGroupResponse) then) =
      _$FunctionsJoinGroupResponseCopyWithImpl<$Res,
          FunctionsJoinGroupResponse>;
  @useResult
  $Res call({String? errorCode});
}

/// @nodoc
class _$FunctionsJoinGroupResponseCopyWithImpl<$Res,
        $Val extends FunctionsJoinGroupResponse>
    implements $FunctionsJoinGroupResponseCopyWith<$Res> {
  _$FunctionsJoinGroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FunctionsJoinGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FunctionsJoinGroupResponseImplCopyWith<$Res>
    implements $FunctionsJoinGroupResponseCopyWith<$Res> {
  factory _$$FunctionsJoinGroupResponseImplCopyWith(
          _$FunctionsJoinGroupResponseImpl value,
          $Res Function(_$FunctionsJoinGroupResponseImpl) then) =
      __$$FunctionsJoinGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorCode});
}

/// @nodoc
class __$$FunctionsJoinGroupResponseImplCopyWithImpl<$Res>
    extends _$FunctionsJoinGroupResponseCopyWithImpl<$Res,
        _$FunctionsJoinGroupResponseImpl>
    implements _$$FunctionsJoinGroupResponseImplCopyWith<$Res> {
  __$$FunctionsJoinGroupResponseImplCopyWithImpl(
      _$FunctionsJoinGroupResponseImpl _value,
      $Res Function(_$FunctionsJoinGroupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FunctionsJoinGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_$FunctionsJoinGroupResponseImpl(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FunctionsJoinGroupResponseImpl implements _FunctionsJoinGroupResponse {
  const _$FunctionsJoinGroupResponseImpl({this.errorCode});

  factory _$FunctionsJoinGroupResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FunctionsJoinGroupResponseImplFromJson(json);

  @override
  final String? errorCode;

  @override
  String toString() {
    return 'FunctionsJoinGroupResponse(errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionsJoinGroupResponseImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  /// Create a copy of FunctionsJoinGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FunctionsJoinGroupResponseImplCopyWith<_$FunctionsJoinGroupResponseImpl>
      get copyWith => __$$FunctionsJoinGroupResponseImplCopyWithImpl<
          _$FunctionsJoinGroupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FunctionsJoinGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _FunctionsJoinGroupResponse
    implements FunctionsJoinGroupResponse {
  const factory _FunctionsJoinGroupResponse({final String? errorCode}) =
      _$FunctionsJoinGroupResponseImpl;

  factory _FunctionsJoinGroupResponse.fromJson(Map<String, dynamic> json) =
      _$FunctionsJoinGroupResponseImpl.fromJson;

  @override
  String? get errorCode;

  /// Create a copy of FunctionsJoinGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FunctionsJoinGroupResponseImplCopyWith<_$FunctionsJoinGroupResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
