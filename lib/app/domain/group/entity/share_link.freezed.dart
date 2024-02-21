// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShareLink {
  String get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  int get validDays => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareLinkCopyWith<ShareLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareLinkCopyWith<$Res> {
  factory $ShareLinkCopyWith(ShareLink value, $Res Function(ShareLink) then) =
      _$ShareLinkCopyWithImpl<$Res, ShareLink>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      int validDays,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ShareLinkCopyWithImpl<$Res, $Val extends ShareLink>
    implements $ShareLinkCopyWith<$Res> {
  _$ShareLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? validDays = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      validDays: null == validDays
          ? _value.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ShareLinkImplCopyWith<$Res>
    implements $ShareLinkCopyWith<$Res> {
  factory _$$ShareLinkImplCopyWith(
          _$ShareLinkImpl value, $Res Function(_$ShareLinkImpl) then) =
      __$$ShareLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      int validDays,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ShareLinkImplCopyWithImpl<$Res>
    extends _$ShareLinkCopyWithImpl<$Res, _$ShareLinkImpl>
    implements _$$ShareLinkImplCopyWith<$Res> {
  __$$ShareLinkImplCopyWithImpl(
      _$ShareLinkImpl _value, $Res Function(_$ShareLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? validDays = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ShareLinkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      validDays: null == validDays
          ? _value.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$ShareLinkImpl implements _ShareLink {
  const _$ShareLinkImpl(
      {required this.id,
      required this.groupId,
      required this.validDays,
      required this.createdAt,
      required this.updatedAt});

  @override
  final String id;
  @override
  final String groupId;
  @override
  final int validDays;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ShareLink(id: $id, groupId: $groupId, validDays: $validDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareLinkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.validDays, validDays) ||
                other.validDays == validDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, groupId, validDays, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareLinkImplCopyWith<_$ShareLinkImpl> get copyWith =>
      __$$ShareLinkImplCopyWithImpl<_$ShareLinkImpl>(this, _$identity);
}

abstract class _ShareLink implements ShareLink {
  const factory _ShareLink(
      {required final String id,
      required final String groupId,
      required final int validDays,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ShareLinkImpl;

  @override
  String get id;
  @override
  String get groupId;
  @override
  int get validDays;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ShareLinkImplCopyWith<_$ShareLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
