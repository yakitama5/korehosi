// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationToken _$NotificationTokenFromJson(Map<String, dynamic> json) {
  return _NotificationToken.fromJson(json);
}

/// @nodoc
mixin _$NotificationToken {
  String get token => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationTokenCopyWith<NotificationToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTokenCopyWith<$Res> {
  factory $NotificationTokenCopyWith(
          NotificationToken value, $Res Function(NotificationToken) then) =
      _$NotificationTokenCopyWithImpl<$Res, NotificationToken>;
  @useResult
  $Res call({String token, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$NotificationTokenCopyWithImpl<$Res, $Val extends NotificationToken>
    implements $NotificationTokenCopyWith<$Res> {
  _$NotificationTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationTokenImplCopyWith<$Res>
    implements $NotificationTokenCopyWith<$Res> {
  factory _$$NotificationTokenImplCopyWith(_$NotificationTokenImpl value,
          $Res Function(_$NotificationTokenImpl) then) =
      __$$NotificationTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$$NotificationTokenImplCopyWithImpl<$Res>
    extends _$NotificationTokenCopyWithImpl<$Res, _$NotificationTokenImpl>
    implements _$$NotificationTokenImplCopyWith<$Res> {
  __$$NotificationTokenImplCopyWithImpl(_$NotificationTokenImpl _value,
      $Res Function(_$NotificationTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$NotificationTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTokenImpl implements _NotificationToken {
  const _$NotificationTokenImpl(
      {required this.token, required this.createdAt, required this.updatedAt});

  factory _$NotificationTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTokenImplFromJson(json);

  @override
  final String token;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'NotificationToken(token: $token, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTokenImplCopyWith<_$NotificationTokenImpl> get copyWith =>
      __$$NotificationTokenImplCopyWithImpl<_$NotificationTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTokenImplToJson(
      this,
    );
  }
}

abstract class _NotificationToken implements NotificationToken {
  const factory _NotificationToken(
      {required final String token,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$NotificationTokenImpl;

  factory _NotificationToken.fromJson(Map<String, dynamic> json) =
      _$NotificationTokenImpl.fromJson;

  @override
  String get token;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NotificationTokenImplCopyWith<_$NotificationTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
