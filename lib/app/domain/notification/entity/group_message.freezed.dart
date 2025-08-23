// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupMessage {
  String get id;
  String get title;
  String get body;
  NotificationTarget get target;
  NotificationEvent get event;
  String? get path;
  String get uid;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of GroupMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupMessageCopyWith<GroupMessage> get copyWith =>
      _$GroupMessageCopyWithImpl<GroupMessage>(
          this as GroupMessage, _$identity);

  /// Serializes this GroupMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupMessage &&
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
    return 'GroupMessage(id: $id, title: $title, body: $body, target: $target, event: $event, path: $path, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $GroupMessageCopyWith<$Res> {
  factory $GroupMessageCopyWith(
          GroupMessage value, $Res Function(GroupMessage) _then) =
      _$GroupMessageCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      NotificationTarget target,
      NotificationEvent event,
      String? path,
      String uid,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$GroupMessageCopyWithImpl<$Res> implements $GroupMessageCopyWith<$Res> {
  _$GroupMessageCopyWithImpl(this._self, this._then);

  final GroupMessage _self;
  final $Res Function(GroupMessage) _then;

  /// Create a copy of GroupMessage
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

/// Adds pattern-matching-related methods to [GroupMessage].
extension GroupMessagePatterns on GroupMessage {
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
    TResult Function(_GroupMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GroupMessage() when $default != null:
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
    TResult Function(_GroupMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GroupMessage():
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
    TResult? Function(_GroupMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GroupMessage() when $default != null:
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
            NotificationEvent event,
            String? path,
            String uid,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GroupMessage() when $default != null:
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
            NotificationEvent event,
            String? path,
            String uid,
            DateTime? createdAt,
            DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GroupMessage():
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
            NotificationEvent event,
            String? path,
            String uid,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GroupMessage() when $default != null:
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
class _GroupMessage implements GroupMessage {
  const _GroupMessage(
      {required this.id,
      required this.title,
      required this.body,
      required this.target,
      required this.event,
      this.path,
      required this.uid,
      this.createdAt,
      this.updatedAt});
  factory _GroupMessage.fromJson(Map<String, dynamic> json) =>
      _$GroupMessageFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final NotificationTarget target;
  @override
  final NotificationEvent event;
  @override
  final String? path;
  @override
  final String uid;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of GroupMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroupMessageCopyWith<_GroupMessage> get copyWith =>
      __$GroupMessageCopyWithImpl<_GroupMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroupMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupMessage &&
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
    return 'GroupMessage(id: $id, title: $title, body: $body, target: $target, event: $event, path: $path, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$GroupMessageCopyWith<$Res>
    implements $GroupMessageCopyWith<$Res> {
  factory _$GroupMessageCopyWith(
          _GroupMessage value, $Res Function(_GroupMessage) _then) =
      __$GroupMessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      NotificationTarget target,
      NotificationEvent event,
      String? path,
      String uid,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$GroupMessageCopyWithImpl<$Res>
    implements _$GroupMessageCopyWith<$Res> {
  __$GroupMessageCopyWithImpl(this._self, this._then);

  final _GroupMessage _self;
  final $Res Function(_GroupMessage) _then;

  /// Create a copy of GroupMessage
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
    return _then(_GroupMessage(
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
