// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinGroupRequest _$JoinGroupRequestFromJson(Map<String, dynamic> json) {
  return _JoinGroupRequest.fromJson(json);
}

/// @nodoc
mixin _$JoinGroupRequest {
  String get shareLinkId => throw _privateConstructorUsedError;

  /// Serializes this JoinGroupRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinGroupRequestCopyWith<JoinGroupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupRequestCopyWith<$Res> {
  factory $JoinGroupRequestCopyWith(
          JoinGroupRequest value, $Res Function(JoinGroupRequest) then) =
      _$JoinGroupRequestCopyWithImpl<$Res, JoinGroupRequest>;
  @useResult
  $Res call({String shareLinkId});
}

/// @nodoc
class _$JoinGroupRequestCopyWithImpl<$Res, $Val extends JoinGroupRequest>
    implements $JoinGroupRequestCopyWith<$Res> {
  _$JoinGroupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareLinkId = null,
  }) {
    return _then(_value.copyWith(
      shareLinkId: null == shareLinkId
          ? _value.shareLinkId
          : shareLinkId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinGroupRequestImplCopyWith<$Res>
    implements $JoinGroupRequestCopyWith<$Res> {
  factory _$$JoinGroupRequestImplCopyWith(_$JoinGroupRequestImpl value,
          $Res Function(_$JoinGroupRequestImpl) then) =
      __$$JoinGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shareLinkId});
}

/// @nodoc
class __$$JoinGroupRequestImplCopyWithImpl<$Res>
    extends _$JoinGroupRequestCopyWithImpl<$Res, _$JoinGroupRequestImpl>
    implements _$$JoinGroupRequestImplCopyWith<$Res> {
  __$$JoinGroupRequestImplCopyWithImpl(_$JoinGroupRequestImpl _value,
      $Res Function(_$JoinGroupRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareLinkId = null,
  }) {
    return _then(_$JoinGroupRequestImpl(
      shareLinkId: null == shareLinkId
          ? _value.shareLinkId
          : shareLinkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinGroupRequestImpl implements _JoinGroupRequest {
  const _$JoinGroupRequestImpl({required this.shareLinkId});

  factory _$JoinGroupRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinGroupRequestImplFromJson(json);

  @override
  final String shareLinkId;

  @override
  String toString() {
    return 'JoinGroupRequest(shareLinkId: $shareLinkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinGroupRequestImpl &&
            (identical(other.shareLinkId, shareLinkId) ||
                other.shareLinkId == shareLinkId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shareLinkId);

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinGroupRequestImplCopyWith<_$JoinGroupRequestImpl> get copyWith =>
      __$$JoinGroupRequestImplCopyWithImpl<_$JoinGroupRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinGroupRequestImplToJson(
      this,
    );
  }
}

abstract class _JoinGroupRequest implements JoinGroupRequest {
  const factory _JoinGroupRequest({required final String shareLinkId}) =
      _$JoinGroupRequestImpl;

  factory _JoinGroupRequest.fromJson(Map<String, dynamic> json) =
      _$JoinGroupRequestImpl.fromJson;

  @override
  String get shareLinkId;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinGroupRequestImplCopyWith<_$JoinGroupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
