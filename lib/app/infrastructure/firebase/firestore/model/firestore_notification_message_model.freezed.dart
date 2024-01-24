// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_notification_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreNotificationMessageModel _$FirestoreNotificationMessageModelFromJson(
    Map<String, dynamic> json) {
  return _FirestoreNotificationMessageModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreNotificationMessageModel {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  NotificationTarget get target => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreNotificationMessageModelCopyWith<FirestoreNotificationMessageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreNotificationMessageModelCopyWith<$Res> {
  factory $FirestoreNotificationMessageModelCopyWith(
          FirestoreNotificationMessageModel value,
          $Res Function(FirestoreNotificationMessageModel) then) =
      _$FirestoreNotificationMessageModelCopyWithImpl<$Res,
          FirestoreNotificationMessageModel>;
  @useResult
  $Res call(
      {String id,
      String body,
      NotificationTarget target,
      String uid,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreNotificationMessageModelCopyWithImpl<$Res,
        $Val extends FirestoreNotificationMessageModel>
    implements $FirestoreNotificationMessageModelCopyWith<$Res> {
  _$FirestoreNotificationMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? target = null,
    Object? uid = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as NotificationTarget,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FirestoreNotificationMessageModelImplCopyWith<$Res>
    implements $FirestoreNotificationMessageModelCopyWith<$Res> {
  factory _$$FirestoreNotificationMessageModelImplCopyWith(
          _$FirestoreNotificationMessageModelImpl value,
          $Res Function(_$FirestoreNotificationMessageModelImpl) then) =
      __$$FirestoreNotificationMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String body,
      NotificationTarget target,
      String uid,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreNotificationMessageModelImplCopyWithImpl<$Res>
    extends _$FirestoreNotificationMessageModelCopyWithImpl<$Res,
        _$FirestoreNotificationMessageModelImpl>
    implements _$$FirestoreNotificationMessageModelImplCopyWith<$Res> {
  __$$FirestoreNotificationMessageModelImplCopyWithImpl(
      _$FirestoreNotificationMessageModelImpl _value,
      $Res Function(_$FirestoreNotificationMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? target = null,
    Object? uid = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreNotificationMessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as NotificationTarget,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
class _$FirestoreNotificationMessageModelImpl
    implements _FirestoreNotificationMessageModel {
  const _$FirestoreNotificationMessageModelImpl(
      {required this.id,
      required this.body,
      required this.target,
      required this.uid,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestoreNotificationMessageModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreNotificationMessageModelImplFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final NotificationTarget target;
  @override
  final String uid;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreNotificationMessageModel(id: $id, body: $body, target: $target, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreNotificationMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, body, target, uid, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreNotificationMessageModelImplCopyWith<
          _$FirestoreNotificationMessageModelImpl>
      get copyWith => __$$FirestoreNotificationMessageModelImplCopyWithImpl<
          _$FirestoreNotificationMessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreNotificationMessageModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreNotificationMessageModel
    implements FirestoreNotificationMessageModel {
  const factory _FirestoreNotificationMessageModel(
          {required final String id,
          required final String body,
          required final NotificationTarget target,
          required final String uid,
          @timestampKey final DateTime? createdAt,
          @timestampKey final DateTime? updatedAt}) =
      _$FirestoreNotificationMessageModelImpl;

  factory _FirestoreNotificationMessageModel.fromJson(
          Map<String, dynamic> json) =
      _$FirestoreNotificationMessageModelImpl.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  NotificationTarget get target;
  @override
  String get uid;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreNotificationMessageModelImplCopyWith<
          _$FirestoreNotificationMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
