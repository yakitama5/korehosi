// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestoreGroupModel {
  String get id;
  String get name;
  List<String> get joinUids;
  String get ownerUid;
  int? get itemCount;
  bool get premium;
  @timestampKey
  DateTime? get createdAt;
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirestoreGroupModelCopyWith<FirestoreGroupModel> get copyWith =>
      _$FirestoreGroupModelCopyWithImpl<FirestoreGroupModel>(
          this as FirestoreGroupModel, _$identity);

  /// Serializes this FirestoreGroupModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirestoreGroupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.joinUids, joinUids) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(joinUids),
      ownerUid,
      itemCount,
      premium,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'FirestoreGroupModel(id: $id, name: $name, joinUids: $joinUids, ownerUid: $ownerUid, itemCount: $itemCount, premium: $premium, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FirestoreGroupModelCopyWith<$Res> {
  factory $FirestoreGroupModelCopyWith(
          FirestoreGroupModel value, $Res Function(FirestoreGroupModel) _then) =
      _$FirestoreGroupModelCopyWithImpl;
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
class _$FirestoreGroupModelCopyWithImpl<$Res>
    implements $FirestoreGroupModelCopyWith<$Res> {
  _$FirestoreGroupModelCopyWithImpl(this._self, this._then);

  final FirestoreGroupModel _self;
  final $Res Function(FirestoreGroupModel) _then;

  /// Create a copy of FirestoreGroupModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      joinUids: null == joinUids
          ? _self.joinUids
          : joinUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerUid: null == ownerUid
          ? _self.ownerUid
          : ownerUid // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: freezed == itemCount
          ? _self.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
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

/// Adds pattern-matching-related methods to [FirestoreGroupModel].
extension FirestoreGroupModelPatterns on FirestoreGroupModel {
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
    TResult Function(_FirestoreGroupModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupModel() when $default != null:
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
    TResult Function(_FirestoreGroupModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupModel():
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
    TResult? Function(_FirestoreGroupModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupModel() when $default != null:
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
            String name,
            List<String> joinUids,
            String ownerUid,
            int? itemCount,
            bool premium,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupModel() when $default != null:
        return $default(_that.id, _that.name, _that.joinUids, _that.ownerUid,
            _that.itemCount, _that.premium, _that.createdAt, _that.updatedAt);
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
            String name,
            List<String> joinUids,
            String ownerUid,
            int? itemCount,
            bool premium,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupModel():
        return $default(_that.id, _that.name, _that.joinUids, _that.ownerUid,
            _that.itemCount, _that.premium, _that.createdAt, _that.updatedAt);
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
            String name,
            List<String> joinUids,
            String ownerUid,
            int? itemCount,
            bool premium,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreGroupModel() when $default != null:
        return $default(_that.id, _that.name, _that.joinUids, _that.ownerUid,
            _that.itemCount, _that.premium, _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FirestoreGroupModel implements FirestoreGroupModel {
  const _FirestoreGroupModel(
      {required this.id,
      required this.name,
      required final List<String> joinUids,
      required this.ownerUid,
      this.itemCount,
      required this.premium,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt})
      : _joinUids = joinUids;
  factory _FirestoreGroupModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreGroupModelFromJson(json);

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

  /// Create a copy of FirestoreGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirestoreGroupModelCopyWith<_FirestoreGroupModel> get copyWith =>
      __$FirestoreGroupModelCopyWithImpl<_FirestoreGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirestoreGroupModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirestoreGroupModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'FirestoreGroupModel(id: $id, name: $name, joinUids: $joinUids, ownerUid: $ownerUid, itemCount: $itemCount, premium: $premium, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FirestoreGroupModelCopyWith<$Res>
    implements $FirestoreGroupModelCopyWith<$Res> {
  factory _$FirestoreGroupModelCopyWith(_FirestoreGroupModel value,
          $Res Function(_FirestoreGroupModel) _then) =
      __$FirestoreGroupModelCopyWithImpl;
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
class __$FirestoreGroupModelCopyWithImpl<$Res>
    implements _$FirestoreGroupModelCopyWith<$Res> {
  __$FirestoreGroupModelCopyWithImpl(this._self, this._then);

  final _FirestoreGroupModel _self;
  final $Res Function(_FirestoreGroupModel) _then;

  /// Create a copy of FirestoreGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_FirestoreGroupModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      joinUids: null == joinUids
          ? _self._joinUids
          : joinUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerUid: null == ownerUid
          ? _self.ownerUid
          : ownerUid // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: freezed == itemCount
          ? _self.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
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
