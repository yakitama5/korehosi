// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestoreUserModel {
  String get id;
  AgeGroup get ageGroup;
  String? get name;
  List<String>? get joinGroupIds;
  @timestampKey
  DateTime? get createdAt;
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirestoreUserModelCopyWith<FirestoreUserModel> get copyWith =>
      _$FirestoreUserModelCopyWithImpl<FirestoreUserModel>(
          this as FirestoreUserModel, _$identity);

  /// Serializes this FirestoreUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirestoreUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.joinGroupIds, joinGroupIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ageGroup, name,
      const DeepCollectionEquality().hash(joinGroupIds), createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestoreUserModel(id: $id, ageGroup: $ageGroup, name: $name, joinGroupIds: $joinGroupIds, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FirestoreUserModelCopyWith<$Res> {
  factory $FirestoreUserModelCopyWith(
          FirestoreUserModel value, $Res Function(FirestoreUserModel) _then) =
      _$FirestoreUserModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      AgeGroup ageGroup,
      String? name,
      List<String>? joinGroupIds,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreUserModelCopyWithImpl<$Res>
    implements $FirestoreUserModelCopyWith<$Res> {
  _$FirestoreUserModelCopyWithImpl(this._self, this._then);

  final FirestoreUserModel _self;
  final $Res Function(FirestoreUserModel) _then;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ageGroup = null,
    Object? name = freezed,
    Object? joinGroupIds = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroup: null == ageGroup
          ? _self.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      joinGroupIds: freezed == joinGroupIds
          ? _self.joinGroupIds
          : joinGroupIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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

/// Adds pattern-matching-related methods to [FirestoreUserModel].
extension FirestoreUserModelPatterns on FirestoreUserModel {
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
    TResult Function(_FirestoreUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreUserModel() when $default != null:
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
    TResult Function(_FirestoreUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreUserModel():
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
    TResult? Function(_FirestoreUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreUserModel() when $default != null:
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
            AgeGroup ageGroup,
            String? name,
            List<String>? joinGroupIds,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreUserModel() when $default != null:
        return $default(_that.id, _that.ageGroup, _that.name,
            _that.joinGroupIds, _that.createdAt, _that.updatedAt);
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
            AgeGroup ageGroup,
            String? name,
            List<String>? joinGroupIds,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreUserModel():
        return $default(_that.id, _that.ageGroup, _that.name,
            _that.joinGroupIds, _that.createdAt, _that.updatedAt);
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
            AgeGroup ageGroup,
            String? name,
            List<String>? joinGroupIds,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreUserModel() when $default != null:
        return $default(_that.id, _that.ageGroup, _that.name,
            _that.joinGroupIds, _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FirestoreUserModel implements FirestoreUserModel {
  const _FirestoreUserModel(
      {required this.id,
      required this.ageGroup,
      this.name,
      final List<String>? joinGroupIds,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt})
      : _joinGroupIds = joinGroupIds;
  factory _FirestoreUserModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserModelFromJson(json);

  @override
  final String id;
  @override
  final AgeGroup ageGroup;
  @override
  final String? name;
  final List<String>? _joinGroupIds;
  @override
  List<String>? get joinGroupIds {
    final value = _joinGroupIds;
    if (value == null) return null;
    if (_joinGroupIds is EqualUnmodifiableListView) return _joinGroupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirestoreUserModelCopyWith<_FirestoreUserModel> get copyWith =>
      __$FirestoreUserModelCopyWithImpl<_FirestoreUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirestoreUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirestoreUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._joinGroupIds, _joinGroupIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ageGroup, name,
      const DeepCollectionEquality().hash(_joinGroupIds), createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestoreUserModel(id: $id, ageGroup: $ageGroup, name: $name, joinGroupIds: $joinGroupIds, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FirestoreUserModelCopyWith<$Res>
    implements $FirestoreUserModelCopyWith<$Res> {
  factory _$FirestoreUserModelCopyWith(
          _FirestoreUserModel value, $Res Function(_FirestoreUserModel) _then) =
      __$FirestoreUserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      AgeGroup ageGroup,
      String? name,
      List<String>? joinGroupIds,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$FirestoreUserModelCopyWithImpl<$Res>
    implements _$FirestoreUserModelCopyWith<$Res> {
  __$FirestoreUserModelCopyWithImpl(this._self, this._then);

  final _FirestoreUserModel _self;
  final $Res Function(_FirestoreUserModel) _then;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? ageGroup = null,
    Object? name = freezed,
    Object? joinGroupIds = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FirestoreUserModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroup: null == ageGroup
          ? _self.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      joinGroupIds: freezed == joinGroupIds
          ? _self._joinGroupIds
          : joinGroupIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
