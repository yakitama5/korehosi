// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreGroupModel _$FirestoreGroupModelFromJson(Map<String, dynamic> json) {
  return _FirestoreGroupModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreGroupModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get joinUids => throw _privateConstructorUsedError;
  String get ownerUid => throw _privateConstructorUsedError;
  int? get itemCount => throw _privateConstructorUsedError;
  bool get premium => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreGroupModelCopyWith<FirestoreGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreGroupModelCopyWith<$Res> {
  factory $FirestoreGroupModelCopyWith(
          FirestoreGroupModel value, $Res Function(FirestoreGroupModel) then) =
      _$FirestoreGroupModelCopyWithImpl<$Res, FirestoreGroupModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> joinUids,
      String ownerUid,
      int? itemCount,
      bool premium,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreGroupModelCopyWithImpl<$Res, $Val extends FirestoreGroupModel>
    implements $FirestoreGroupModelCopyWith<$Res> {
  _$FirestoreGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? joinUids = null,
    Object? ownerUid = null,
    Object? itemCount = freezed,
    Object? premium = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      joinUids: null == joinUids
          ? _value.joinUids
          : joinUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerUid: null == ownerUid
          ? _value.ownerUid
          : ownerUid // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: freezed == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$FirestoreGroupModelImplCopyWith<$Res>
    implements $FirestoreGroupModelCopyWith<$Res> {
  factory _$$FirestoreGroupModelImplCopyWith(_$FirestoreGroupModelImpl value,
          $Res Function(_$FirestoreGroupModelImpl) then) =
      __$$FirestoreGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> joinUids,
      String ownerUid,
      int? itemCount,
      bool premium,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreGroupModelImplCopyWithImpl<$Res>
    extends _$FirestoreGroupModelCopyWithImpl<$Res, _$FirestoreGroupModelImpl>
    implements _$$FirestoreGroupModelImplCopyWith<$Res> {
  __$$FirestoreGroupModelImplCopyWithImpl(_$FirestoreGroupModelImpl _value,
      $Res Function(_$FirestoreGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? joinUids = null,
    Object? ownerUid = null,
    Object? itemCount = freezed,
    Object? premium = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreGroupModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      joinUids: null == joinUids
          ? _value._joinUids
          : joinUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerUid: null == ownerUid
          ? _value.ownerUid
          : ownerUid // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: freezed == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$FirestoreGroupModelImpl implements _FirestoreGroupModel {
  const _$FirestoreGroupModelImpl(
      {required this.id,
      required this.name,
      required final List<String> joinUids,
      required this.ownerUid,
      this.itemCount,
      required this.premium,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt})
      : _joinUids = joinUids;

  factory _$FirestoreGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreGroupModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _joinUids;
  @override
  List<String> get joinUids {
    if (_joinUids is EqualUnmodifiableListView) return _joinUids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinUids);
  }

  @override
  final String ownerUid;
  @override
  final int? itemCount;
  @override
  final bool premium;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreGroupModel(id: $id, name: $name, joinUids: $joinUids, ownerUid: $ownerUid, itemCount: $itemCount, premium: $premium, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreGroupModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._joinUids, _joinUids) &&
            (identical(other.ownerUid, ownerUid) ||
                other.ownerUid == ownerUid) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_joinUids),
      ownerUid,
      itemCount,
      premium,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreGroupModelImplCopyWith<_$FirestoreGroupModelImpl> get copyWith =>
      __$$FirestoreGroupModelImplCopyWithImpl<_$FirestoreGroupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreGroupModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreGroupModel implements FirestoreGroupModel {
  const factory _FirestoreGroupModel(
      {required final String id,
      required final String name,
      required final List<String> joinUids,
      required final String ownerUid,
      final int? itemCount,
      required final bool premium,
      @timestampKey final DateTime? createdAt,
      @timestampKey final DateTime? updatedAt}) = _$FirestoreGroupModelImpl;

  factory _FirestoreGroupModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreGroupModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get joinUids;
  @override
  String get ownerUid;
  @override
  int? get itemCount;
  @override
  bool get premium;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreGroupModelImplCopyWith<_$FirestoreGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
