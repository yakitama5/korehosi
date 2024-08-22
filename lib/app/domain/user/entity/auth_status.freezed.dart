// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthStatus _$AuthStatusFromJson(Map<String, dynamic> json) {
  return _AuthStatus.fromJson(json);
}

/// @nodoc
mixin _$AuthStatus {
  String get uid => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  bool get linkedGoogle => throw _privateConstructorUsedError;
  bool get linkedApple => throw _privateConstructorUsedError;

  /// Serializes this AuthStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStatusCopyWith<AuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
  @useResult
  $Res call(
      {String uid, bool isAnonymous, bool linkedGoogle, bool linkedApple});
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? isAnonymous = null,
    Object? linkedGoogle = null,
    Object? linkedApple = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedGoogle: null == linkedGoogle
          ? _value.linkedGoogle
          : linkedGoogle // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedApple: null == linkedApple
          ? _value.linkedApple
          : linkedApple // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStatusImplCopyWith<$Res>
    implements $AuthStatusCopyWith<$Res> {
  factory _$$AuthStatusImplCopyWith(
          _$AuthStatusImpl value, $Res Function(_$AuthStatusImpl) then) =
      __$$AuthStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid, bool isAnonymous, bool linkedGoogle, bool linkedApple});
}

/// @nodoc
class __$$AuthStatusImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusImpl>
    implements _$$AuthStatusImplCopyWith<$Res> {
  __$$AuthStatusImplCopyWithImpl(
      _$AuthStatusImpl _value, $Res Function(_$AuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? isAnonymous = null,
    Object? linkedGoogle = null,
    Object? linkedApple = null,
  }) {
    return _then(_$AuthStatusImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedGoogle: null == linkedGoogle
          ? _value.linkedGoogle
          : linkedGoogle // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedApple: null == linkedApple
          ? _value.linkedApple
          : linkedApple // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStatusImpl implements _AuthStatus {
  const _$AuthStatusImpl(
      {required this.uid,
      required this.isAnonymous,
      required this.linkedGoogle,
      required this.linkedApple});

  factory _$AuthStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStatusImplFromJson(json);

  @override
  final String uid;
  @override
  final bool isAnonymous;
  @override
  final bool linkedGoogle;
  @override
  final bool linkedApple;

  @override
  String toString() {
    return 'AuthStatus(uid: $uid, isAnonymous: $isAnonymous, linkedGoogle: $linkedGoogle, linkedApple: $linkedApple)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.linkedGoogle, linkedGoogle) ||
                other.linkedGoogle == linkedGoogle) &&
            (identical(other.linkedApple, linkedApple) ||
                other.linkedApple == linkedApple));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, isAnonymous, linkedGoogle, linkedApple);

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      __$$AuthStatusImplCopyWithImpl<_$AuthStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStatusImplToJson(
      this,
    );
  }
}

abstract class _AuthStatus implements AuthStatus {
  const factory _AuthStatus(
      {required final String uid,
      required final bool isAnonymous,
      required final bool linkedGoogle,
      required final bool linkedApple}) = _$AuthStatusImpl;

  factory _AuthStatus.fromJson(Map<String, dynamic> json) =
      _$AuthStatusImpl.fromJson;

  @override
  String get uid;
  @override
  bool get isAnonymous;
  @override
  bool get linkedGoogle;
  @override
  bool get linkedApple;

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
