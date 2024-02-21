// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_group_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreGroupMessageModel _$FirestoreGroupMessageModelFromJson(
    Map<String, dynamic> json) {
  return _FirestoreGroupMessageModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreGroupMessageModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  NotificationTarget get target => throw _privateConstructorUsedError;
  @notificationEventKey
  NotificationEvent get event => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreGroupMessageModelCopyWith<FirestoreGroupMessageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreGroupMessageModelCopyWith<$Res> {
  factory $FirestoreGroupMessageModelCopyWith(FirestoreGroupMessageModel value,
          $Res Function(FirestoreGroupMessageModel) then) =
      _$FirestoreGroupMessageModelCopyWithImpl<$Res,
          FirestoreGroupMessageModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      NotificationTarget target,
      @notificationEventKey NotificationEvent event,
      String? path,
      String uid,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreGroupMessageModelCopyWithImpl<$Res,
        $Val extends FirestoreGroupMessageModel>
    implements $FirestoreGroupMessageModelCopyWith<$Res> {
  _$FirestoreGroupMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? target = null,
    Object? event = null,
    Object? path = freezed,
    Object? uid = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as NotificationTarget,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as NotificationEvent,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$FirestoreGroupMessageModelImplCopyWith<$Res>
    implements $FirestoreGroupMessageModelCopyWith<$Res> {
  factory _$$FirestoreGroupMessageModelImplCopyWith(
          _$FirestoreGroupMessageModelImpl value,
          $Res Function(_$FirestoreGroupMessageModelImpl) then) =
      __$$FirestoreGroupMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      NotificationTarget target,
      @notificationEventKey NotificationEvent event,
      String? path,
      String uid,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreGroupMessageModelImplCopyWithImpl<$Res>
    extends _$FirestoreGroupMessageModelCopyWithImpl<$Res,
        _$FirestoreGroupMessageModelImpl>
    implements _$$FirestoreGroupMessageModelImplCopyWith<$Res> {
  __$$FirestoreGroupMessageModelImplCopyWithImpl(
      _$FirestoreGroupMessageModelImpl _value,
      $Res Function(_$FirestoreGroupMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? target = null,
    Object? event = null,
    Object? path = freezed,
    Object? uid = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreGroupMessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as NotificationTarget,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as NotificationEvent,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$FirestoreGroupMessageModelImpl implements _FirestoreGroupMessageModel {
  const _$FirestoreGroupMessageModelImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.target,
      @notificationEventKey required this.event,
      this.path,
      required this.uid,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestoreGroupMessageModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreGroupMessageModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final NotificationTarget target;
  @override
  @notificationEventKey
  final NotificationEvent event;
  @override
  final String? path;
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
    return 'FirestoreGroupMessageModel(id: $id, title: $title, body: $body, target: $target, event: $event, path: $path, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreGroupMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, target, event,
      path, uid, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreGroupMessageModelImplCopyWith<_$FirestoreGroupMessageModelImpl>
      get copyWith => __$$FirestoreGroupMessageModelImplCopyWithImpl<
          _$FirestoreGroupMessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreGroupMessageModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreGroupMessageModel
    implements FirestoreGroupMessageModel {
  const factory _FirestoreGroupMessageModel(
          {required final String id,
          required final String title,
          required final String body,
          required final NotificationTarget target,
          @notificationEventKey required final NotificationEvent event,
          final String? path,
          required final String uid,
          @timestampKey final DateTime? createdAt,
          @timestampKey final DateTime? updatedAt}) =
      _$FirestoreGroupMessageModelImpl;

  factory _FirestoreGroupMessageModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreGroupMessageModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  NotificationTarget get target;
  @override
  @notificationEventKey
  NotificationEvent get event;
  @override
  String? get path;
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
  _$$FirestoreGroupMessageModelImplCopyWith<_$FirestoreGroupMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
