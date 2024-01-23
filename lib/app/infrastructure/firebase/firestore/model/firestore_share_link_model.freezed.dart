// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_share_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreShareLinkModel _$FirestoreShareLinkModelFromJson(
    Map<String, dynamic> json) {
  return _FirestoreShareLinkModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreShareLinkModel {
  String get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  int get validDays => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreShareLinkModelCopyWith<FirestoreShareLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreShareLinkModelCopyWith<$Res> {
  factory $FirestoreShareLinkModelCopyWith(FirestoreShareLinkModel value,
          $Res Function(FirestoreShareLinkModel) then) =
      _$FirestoreShareLinkModelCopyWithImpl<$Res, FirestoreShareLinkModel>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      int validDays,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreShareLinkModelCopyWithImpl<$Res,
        $Val extends FirestoreShareLinkModel>
    implements $FirestoreShareLinkModelCopyWith<$Res> {
  _$FirestoreShareLinkModelCopyWithImpl(this._value, this._then);

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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
abstract class _$$FirestoreShareLinkModelImplCopyWith<$Res>
    implements $FirestoreShareLinkModelCopyWith<$Res> {
  factory _$$FirestoreShareLinkModelImplCopyWith(
          _$FirestoreShareLinkModelImpl value,
          $Res Function(_$FirestoreShareLinkModelImpl) then) =
      __$$FirestoreShareLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      int validDays,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreShareLinkModelImplCopyWithImpl<$Res>
    extends _$FirestoreShareLinkModelCopyWithImpl<$Res,
        _$FirestoreShareLinkModelImpl>
    implements _$$FirestoreShareLinkModelImplCopyWith<$Res> {
  __$$FirestoreShareLinkModelImplCopyWithImpl(
      _$FirestoreShareLinkModelImpl _value,
      $Res Function(_$FirestoreShareLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? validDays = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreShareLinkModelImpl(
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
class _$FirestoreShareLinkModelImpl implements _FirestoreShareLinkModel {
  const _$FirestoreShareLinkModelImpl(
      {required this.id,
      required this.groupId,
      required this.validDays,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestoreShareLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreShareLinkModelImplFromJson(json);

  @override
  final String id;
  @override
  final String groupId;
  @override
  final int validDays;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreShareLinkModel(id: $id, groupId: $groupId, validDays: $validDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreShareLinkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.validDays, validDays) ||
                other.validDays == validDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, groupId, validDays, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreShareLinkModelImplCopyWith<_$FirestoreShareLinkModelImpl>
      get copyWith => __$$FirestoreShareLinkModelImplCopyWithImpl<
          _$FirestoreShareLinkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreShareLinkModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreShareLinkModel implements FirestoreShareLinkModel {
  const factory _FirestoreShareLinkModel(
      {required final String id,
      required final String groupId,
      required final int validDays,
      @timestampKey final DateTime? createdAt,
      @timestampKey final DateTime? updatedAt}) = _$FirestoreShareLinkModelImpl;

  factory _FirestoreShareLinkModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreShareLinkModelImpl.fromJson;

  @override
  String get id;
  @override
  String get groupId;
  @override
  int get validDays;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreShareLinkModelImplCopyWith<_$FirestoreShareLinkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
