// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestorePurchaseModel {
  String get id;
  int? get price;
  String? get buyerName;
  @timestampKey
  DateTime? get planDate;
  bool get surprise;
  @timestampKey
  DateTime? get sentAt;
  String? get memo;
  String get uid;
  @timestampKey
  DateTime? get createdAt;
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestorePurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirestorePurchaseModelCopyWith<FirestorePurchaseModel> get copyWith =>
      _$FirestorePurchaseModelCopyWithImpl<FirestorePurchaseModel>(
          this as FirestorePurchaseModel, _$identity);

  /// Serializes this FirestorePurchaseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirestorePurchaseModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, buyerName, planDate,
      surprise, sentAt, memo, uid, createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestorePurchaseModel(id: $id, price: $price, buyerName: $buyerName, planDate: $planDate, surprise: $surprise, sentAt: $sentAt, memo: $memo, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FirestorePurchaseModelCopyWith<$Res> {
  factory $FirestorePurchaseModelCopyWith(FirestorePurchaseModel value,
          $Res Function(FirestorePurchaseModel) _then) =
      _$FirestorePurchaseModelCopyWithImpl;
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
class _$FirestorePurchaseModelCopyWithImpl<$Res>
    implements $FirestorePurchaseModelCopyWith<$Res> {
  _$FirestorePurchaseModelCopyWithImpl(this._self, this._then);

  final FirestorePurchaseModel _self;
  final $Res Function(FirestorePurchaseModel) _then;

  /// Create a copy of FirestorePurchaseModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      buyerName: freezed == buyerName
          ? _self.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String?,
      planDate: freezed == planDate
          ? _self.planDate
          : planDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      surprise: null == surprise
          ? _self.surprise
          : surprise // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memo: freezed == memo
          ? _self.memo
          : memo // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [FirestorePurchaseModel].
extension FirestorePurchaseModelPatterns on FirestorePurchaseModel {
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
    TResult Function(_FirestorePurchaseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestorePurchaseModel() when $default != null:
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
    TResult Function(_FirestorePurchaseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestorePurchaseModel():
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
    TResult? Function(_FirestorePurchaseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestorePurchaseModel() when $default != null:
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
            int? price,
            String? buyerName,
            @timestampKey DateTime? planDate,
            bool surprise,
            @timestampKey DateTime? sentAt,
            String? memo,
            String uid,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestorePurchaseModel() when $default != null:
        return $default(
            _that.id,
            _that.price,
            _that.buyerName,
            _that.planDate,
            _that.surprise,
            _that.sentAt,
            _that.memo,
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
            int? price,
            String? buyerName,
            @timestampKey DateTime? planDate,
            bool surprise,
            @timestampKey DateTime? sentAt,
            String? memo,
            String uid,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestorePurchaseModel():
        return $default(
            _that.id,
            _that.price,
            _that.buyerName,
            _that.planDate,
            _that.surprise,
            _that.sentAt,
            _that.memo,
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
            int? price,
            String? buyerName,
            @timestampKey DateTime? planDate,
            bool surprise,
            @timestampKey DateTime? sentAt,
            String? memo,
            String uid,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestorePurchaseModel() when $default != null:
        return $default(
            _that.id,
            _that.price,
            _that.buyerName,
            _that.planDate,
            _that.surprise,
            _that.sentAt,
            _that.memo,
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
class _FirestorePurchaseModel implements FirestorePurchaseModel {
  const _FirestorePurchaseModel(
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
  factory _FirestorePurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$FirestorePurchaseModelFromJson(json);

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

  /// Create a copy of FirestorePurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirestorePurchaseModelCopyWith<_FirestorePurchaseModel> get copyWith =>
      __$FirestorePurchaseModelCopyWithImpl<_FirestorePurchaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirestorePurchaseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirestorePurchaseModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, buyerName, planDate,
      surprise, sentAt, memo, uid, createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestorePurchaseModel(id: $id, price: $price, buyerName: $buyerName, planDate: $planDate, surprise: $surprise, sentAt: $sentAt, memo: $memo, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FirestorePurchaseModelCopyWith<$Res>
    implements $FirestorePurchaseModelCopyWith<$Res> {
  factory _$FirestorePurchaseModelCopyWith(_FirestorePurchaseModel value,
          $Res Function(_FirestorePurchaseModel) _then) =
      __$FirestorePurchaseModelCopyWithImpl;
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
class __$FirestorePurchaseModelCopyWithImpl<$Res>
    implements _$FirestorePurchaseModelCopyWith<$Res> {
  __$FirestorePurchaseModelCopyWithImpl(this._self, this._then);

  final _FirestorePurchaseModel _self;
  final $Res Function(_FirestorePurchaseModel) _then;

  /// Create a copy of FirestorePurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_FirestorePurchaseModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      buyerName: freezed == buyerName
          ? _self.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String?,
      planDate: freezed == planDate
          ? _self.planDate
          : planDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      surprise: null == surprise
          ? _self.surprise
          : surprise // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memo: freezed == memo
          ? _self.memo
          : memo // ignore: cast_nullable_to_non_nullable
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
