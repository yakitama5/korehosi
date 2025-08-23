// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_group_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestoreGroupMessageModel {
  String get id;
  String get title;
  String get body;
  NotificationTarget get target;
  @notificationEventKey
  NotificationEvent get event;
  String? get path;
  String get uid;
  @timestampKey
  DateTime? get createdAt;
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreGroupMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirestoreGroupMessageModelCopyWith<FirestoreGroupMessageModel>
      get copyWith =>
          _$FirestoreGroupMessageModelCopyWithImpl<FirestoreGroupMessageModel>(
              this as FirestoreGroupMessageModel, _$identity);

  /// Serializes this FirestoreGroupMessageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirestoreGroupMessageModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, target, event,
      path, uid, createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestoreGroupMessageModel(id: $id, title: $title, body: $body, target: $target, event: $event, path: $path, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FirestoreGroupMessageModelCopyWith<$Res> {
  factory $FirestoreGroupMessageModelCopyWith(FirestoreGroupMessageModel value,
          $Res Function(FirestoreGroupMessageModel) _then) =
      _$FirestoreGroupMessageModelCopyWithImpl;
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
class _$FirestoreGroupMessageModelCopyWithImpl<$Res>
    implements $FirestoreGroupMessageModelCopyWith<$Res> {
  _$FirestoreGroupMessageModelCopyWithImpl(this._self, this._then);

  final FirestoreGroupMessageModel _self;
  final $Res Function(FirestoreGroupMessageModel) _then;

  /// Create a copy of FirestoreGroupMessageModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _self.target
          : target // ignore: cast_nullable_to_non_nullable
              as NotificationTarget,
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as NotificationEvent,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FirestoreGroupMessageModel].
extension FirestoreGroupMessageModelPatterns on FirestoreGroupMessageModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FirestoreGroupMessageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupMessageModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FirestoreGroupMessageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupMessageModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FirestoreGroupMessageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupMessageModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            String body,
            NotificationTarget target,
            @notificationEventKey NotificationEvent event,
            String? path,
            String uid,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupMessageModel() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.body,
            _that.target,
            _that.event,
            _that.path,
            _that.uid,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            String body,
            NotificationTarget target,
            @notificationEventKey NotificationEvent event,
            String? path,
            String uid,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupMessageModel():
        return $default(
            _that.id,
            _that.title,
            _that.body,
            _that.target,
            _that.event,
            _that.path,
            _that.uid,
            _that.createdAt,
            _that.updatedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String title,
            String body,
            NotificationTarget target,
            @notificationEventKey NotificationEvent event,
            String? path,
            String uid,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupMessageModel() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.body,
            _that.target,
            _that.event,
            _that.path,
            _that.uid,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FirestoreGroupMessageModel implements FirestoreGroupMessageModel {
  const _FirestoreGroupMessageModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.target,
      @notificationEventKey required this.event,
      this.path,
      required this.uid,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});
  factory _FirestoreGroupMessageModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreGroupMessageModelFromJson(json);

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

  /// Create a copy of FirestoreGroupMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirestoreGroupMessageModelCopyWith<_FirestoreGroupMessageModel>
      get copyWith => __$FirestoreGroupMessageModelCopyWithImpl<
          _FirestoreGroupMessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirestoreGroupMessageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirestoreGroupMessageModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, target, event,
      path, uid, createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestoreGroupMessageModel(id: $id, title: $title, body: $body, target: $target, event: $event, path: $path, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FirestoreGroupMessageModelCopyWith<$Res>
    implements $FirestoreGroupMessageModelCopyWith<$Res> {
  factory _$FirestoreGroupMessageModelCopyWith(
          _FirestoreGroupMessageModel value,
          $Res Function(_FirestoreGroupMessageModel) _then) =
      __$FirestoreGroupMessageModelCopyWithImpl;
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
class __$FirestoreGroupMessageModelCopyWithImpl<$Res>
    implements _$FirestoreGroupMessageModelCopyWith<$Res> {
  __$FirestoreGroupMessageModelCopyWithImpl(this._self, this._then);

  final _FirestoreGroupMessageModel _self;
  final $Res Function(_FirestoreGroupMessageModel) _then;

  /// Create a copy of FirestoreGroupMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_FirestoreGroupMessageModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _self.target
          : target // ignore: cast_nullable_to_non_nullable
              as NotificationTarget,
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as NotificationEvent,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
