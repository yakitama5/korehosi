// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) {
  return _NotificationMessage.fromJson(json);
}

/// @nodoc
mixin _$NotificationMessage {
  String? get senderId => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  String? get messageType => throw _privateConstructorUsedError;

  /// Serializes this NotificationMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationMessageCopyWith<NotificationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessageCopyWith<$Res> {
  factory $NotificationMessageCopyWith(
          NotificationMessage value, $Res Function(NotificationMessage) then) =
      _$NotificationMessageCopyWithImpl<$Res, NotificationMessage>;
  @useResult
  $Res call(
      {String? senderId,
      String? category,
      Map<String, dynamic> data,
      String? from,
      String? messageId,
      String? messageType});
}

/// @nodoc
class _$NotificationMessageCopyWithImpl<$Res, $Val extends NotificationMessage>
    implements $NotificationMessageCopyWith<$Res> {
  _$NotificationMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? category = freezed,
    Object? data = null,
    Object? from = freezed,
    Object? messageId = freezed,
    Object? messageType = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationMessageImplCopyWith<$Res>
    implements $NotificationMessageCopyWith<$Res> {
  factory _$$NotificationMessageImplCopyWith(_$NotificationMessageImpl value,
          $Res Function(_$NotificationMessageImpl) then) =
      __$$NotificationMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? senderId,
      String? category,
      Map<String, dynamic> data,
      String? from,
      String? messageId,
      String? messageType});
}

/// @nodoc
class __$$NotificationMessageImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res, _$NotificationMessageImpl>
    implements _$$NotificationMessageImplCopyWith<$Res> {
  __$$NotificationMessageImplCopyWithImpl(_$NotificationMessageImpl _value,
      $Res Function(_$NotificationMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? category = freezed,
    Object? data = null,
    Object? from = freezed,
    Object? messageId = freezed,
    Object? messageType = freezed,
  }) {
    return _then(_$NotificationMessageImpl(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationMessageImpl implements _NotificationMessage {
  const _$NotificationMessageImpl(
      {this.senderId,
      this.category,
      required final Map<String, dynamic> data,
      this.from,
      this.messageId,
      this.messageType})
      : _data = data;

  factory _$NotificationMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationMessageImplFromJson(json);

  @override
  final String? senderId;
  @override
  final String? category;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String? from;
  @override
  final String? messageId;
  @override
  final String? messageType;

  @override
  String toString() {
    return 'NotificationMessage(senderId: $senderId, category: $category, data: $data, from: $from, messageId: $messageId, messageType: $messageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMessageImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, category,
      const DeepCollectionEquality().hash(_data), from, messageId, messageType);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMessageImplCopyWith<_$NotificationMessageImpl> get copyWith =>
      __$$NotificationMessageImplCopyWithImpl<_$NotificationMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationMessageImplToJson(
      this,
    );
  }
}

abstract class _NotificationMessage implements NotificationMessage {
  const factory _NotificationMessage(
      {final String? senderId,
      final String? category,
      required final Map<String, dynamic> data,
      final String? from,
      final String? messageId,
      final String? messageType}) = _$NotificationMessageImpl;

  factory _NotificationMessage.fromJson(Map<String, dynamic> json) =
      _$NotificationMessageImpl.fromJson;

  @override
  String? get senderId;
  @override
  String? get category;
  @override
  Map<String, dynamic> get data;
  @override
  String? get from;
  @override
  String? get messageId;
  @override
  String? get messageType;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationMessageImplCopyWith<_$NotificationMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
