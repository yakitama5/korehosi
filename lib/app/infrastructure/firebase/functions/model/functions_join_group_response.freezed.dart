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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FunctionsJoinGroupResponse _$FunctionsJoinGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _FunctionsJoinGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$FunctionsJoinGroupResponse {
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionsJoinGroupResponseImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$FunctionsJoinGroupResponseImplCopyWith<_$FunctionsJoinGroupResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
