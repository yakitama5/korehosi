// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_notification_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreNotificationTokenModel _$FirestoreNotificationTokenModelFromJson(
    Map<String, dynamic> json) {
  return _FirestoreNotificationTokenModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreNotificationTokenModel {
  String get token => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreNotificationTokenModelCopyWith<FirestoreNotificationTokenModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreNotificationTokenModelCopyWith<$Res> {
  factory $FirestoreNotificationTokenModelCopyWith(
          FirestoreNotificationTokenModel value,
          $Res Function(FirestoreNotificationTokenModel) then) =
      _$FirestoreNotificationTokenModelCopyWithImpl<$Res,
          FirestoreNotificationTokenModel>;
  @useResult
  $Res call(
      {String token,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreNotificationTokenModelCopyWithImpl<$Res,
        $Val extends FirestoreNotificationTokenModel>
    implements $FirestoreNotificationTokenModelCopyWith<$Res> {
  _$FirestoreNotificationTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreNotificationTokenModelImplCopyWith<$Res>
    implements $FirestoreNotificationTokenModelCopyWith<$Res> {
  factory _$$FirestoreNotificationTokenModelImplCopyWith(
          _$FirestoreNotificationTokenModelImpl value,
          $Res Function(_$FirestoreNotificationTokenModelImpl) then) =
      __$$FirestoreNotificationTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreNotificationTokenModelImplCopyWithImpl<$Res>
    extends _$FirestoreNotificationTokenModelCopyWithImpl<$Res,
        _$FirestoreNotificationTokenModelImpl>
    implements _$$FirestoreNotificationTokenModelImplCopyWith<$Res> {
  __$$FirestoreNotificationTokenModelImplCopyWithImpl(
      _$FirestoreNotificationTokenModelImpl _value,
      $Res Function(_$FirestoreNotificationTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreNotificationTokenModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreNotificationTokenModelImpl
    implements _FirestoreNotificationTokenModel {
  const _$FirestoreNotificationTokenModelImpl(
      {required this.token,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestoreNotificationTokenModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreNotificationTokenModelImplFromJson(json);

  @override
  final String token;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreNotificationTokenModel(token: $token, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreNotificationTokenModelImpl &&
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
  _$$FirestoreNotificationTokenModelImplCopyWith<
          _$FirestoreNotificationTokenModelImpl>
      get copyWith => __$$FirestoreNotificationTokenModelImplCopyWithImpl<
          _$FirestoreNotificationTokenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreNotificationTokenModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreNotificationTokenModel
    implements FirestoreNotificationTokenModel {
  const factory _FirestoreNotificationTokenModel(
          {required final String token,
          @timestampKey final DateTime? createdAt,
          @timestampKey final DateTime? updatedAt}) =
      _$FirestoreNotificationTokenModelImpl;

  factory _FirestoreNotificationTokenModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreNotificationTokenModelImpl.fromJson;

  @override
  String get token;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreNotificationTokenModelImplCopyWith<
          _$FirestoreNotificationTokenModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
