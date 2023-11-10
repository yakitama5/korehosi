// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestorePurchaseModel _$FirestorePurchaseModelFromJson(
    Map<String, dynamic> json) {
  return _FirestorePurchaseModel.fromJson(json);
}

/// @nodoc
mixin _$FirestorePurchaseModel {
  String get id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get buyerName => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get planDate => throw _privateConstructorUsedError;
  bool get surprise => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get sentAt => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestorePurchaseModelCopyWith<FirestorePurchaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestorePurchaseModelCopyWith<$Res> {
  factory $FirestorePurchaseModelCopyWith(FirestorePurchaseModel value,
          $Res Function(FirestorePurchaseModel) then) =
      _$FirestorePurchaseModelCopyWithImpl<$Res, FirestorePurchaseModel>;
  @useResult
  $Res call(
      {String id,
      int? price,
      String? buyerName,
      @timestampKey DateTime? planDate,
      bool surprise,
      @timestampKey DateTime? sentAt,
      String? memo,
      String uid,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestorePurchaseModelCopyWithImpl<$Res,
        $Val extends FirestorePurchaseModel>
    implements $FirestorePurchaseModelCopyWith<$Res> {
  _$FirestorePurchaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = freezed,
    Object? buyerName = freezed,
    Object? planDate = freezed,
    Object? surprise = null,
    Object? sentAt = freezed,
    Object? memo = freezed,
    Object? uid = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      buyerName: freezed == buyerName
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String?,
      planDate: freezed == planDate
          ? _value.planDate
          : planDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      surprise: null == surprise
          ? _value.surprise
          : surprise // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FirestorePurchaseModelImplCopyWith<$Res>
    implements $FirestorePurchaseModelCopyWith<$Res> {
  factory _$$FirestorePurchaseModelImplCopyWith(
          _$FirestorePurchaseModelImpl value,
          $Res Function(_$FirestorePurchaseModelImpl) then) =
      __$$FirestorePurchaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? price,
      String? buyerName,
      @timestampKey DateTime? planDate,
      bool surprise,
      @timestampKey DateTime? sentAt,
      String? memo,
      String uid,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestorePurchaseModelImplCopyWithImpl<$Res>
    extends _$FirestorePurchaseModelCopyWithImpl<$Res,
        _$FirestorePurchaseModelImpl>
    implements _$$FirestorePurchaseModelImplCopyWith<$Res> {
  __$$FirestorePurchaseModelImplCopyWithImpl(
      _$FirestorePurchaseModelImpl _value,
      $Res Function(_$FirestorePurchaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = freezed,
    Object? buyerName = freezed,
    Object? planDate = freezed,
    Object? surprise = null,
    Object? sentAt = freezed,
    Object? memo = freezed,
    Object? uid = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestorePurchaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      buyerName: freezed == buyerName
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String?,
      planDate: freezed == planDate
          ? _value.planDate
          : planDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      surprise: null == surprise
          ? _value.surprise
          : surprise // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
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
class _$FirestorePurchaseModelImpl implements _FirestorePurchaseModel {
  const _$FirestorePurchaseModelImpl(
      {required this.id,
      this.price,
      this.buyerName,
      @timestampKey this.planDate,
      required this.surprise,
      @timestampKey this.sentAt,
      this.memo,
      required this.uid,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestorePurchaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestorePurchaseModelImplFromJson(json);

  @override
  final String id;
  @override
  final int? price;
  @override
  final String? buyerName;
  @override
  @timestampKey
  final DateTime? planDate;
  @override
  final bool surprise;
  @override
  @timestampKey
  final DateTime? sentAt;
  @override
  final String? memo;
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
    return 'FirestorePurchaseModel(id: $id, price: $price, buyerName: $buyerName, planDate: $planDate, surprise: $surprise, sentAt: $sentAt, memo: $memo, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestorePurchaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.buyerName, buyerName) ||
                other.buyerName == buyerName) &&
            (identical(other.planDate, planDate) ||
                other.planDate == planDate) &&
            (identical(other.surprise, surprise) ||
                other.surprise == surprise) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, buyerName, planDate,
      surprise, sentAt, memo, uid, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestorePurchaseModelImplCopyWith<_$FirestorePurchaseModelImpl>
      get copyWith => __$$FirestorePurchaseModelImplCopyWithImpl<
          _$FirestorePurchaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestorePurchaseModelImplToJson(
      this,
    );
  }
}

abstract class _FirestorePurchaseModel implements FirestorePurchaseModel {
  const factory _FirestorePurchaseModel(
      {required final String id,
      final int? price,
      final String? buyerName,
      @timestampKey final DateTime? planDate,
      required final bool surprise,
      @timestampKey final DateTime? sentAt,
      final String? memo,
      required final String uid,
      @timestampKey final DateTime? createdAt,
      @timestampKey final DateTime? updatedAt}) = _$FirestorePurchaseModelImpl;

  factory _FirestorePurchaseModel.fromJson(Map<String, dynamic> json) =
      _$FirestorePurchaseModelImpl.fromJson;

  @override
  String get id;
  @override
  int? get price;
  @override
  String? get buyerName;
  @override
  @timestampKey
  DateTime? get planDate;
  @override
  bool get surprise;
  @override
  @timestampKey
  DateTime? get sentAt;
  @override
  String? get memo;
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
  _$$FirestorePurchaseModelImplCopyWith<_$FirestorePurchaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
