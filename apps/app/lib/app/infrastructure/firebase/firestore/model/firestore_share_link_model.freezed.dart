// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_share_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestoreShareLinkModel {
  String get id;
  String get groupId;
  int get validDays;
  @timestampKey
  DateTime? get createdAt;
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreShareLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirestoreShareLinkModelCopyWith<FirestoreShareLinkModel> get copyWith =>
      _$FirestoreShareLinkModelCopyWithImpl<FirestoreShareLinkModel>(
          this as FirestoreShareLinkModel, _$identity);

  /// Serializes this FirestoreShareLinkModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirestoreShareLinkModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.validDays, validDays) ||
                other.validDays == validDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, groupId, validDays, createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestoreShareLinkModel(id: $id, groupId: $groupId, validDays: $validDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FirestoreShareLinkModelCopyWith<$Res> {
  factory $FirestoreShareLinkModelCopyWith(FirestoreShareLinkModel value,
          $Res Function(FirestoreShareLinkModel) _then) =
      _$FirestoreShareLinkModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String groupId,
      int validDays,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreShareLinkModelCopyWithImpl<$Res>
    implements $FirestoreShareLinkModelCopyWith<$Res> {
  _$FirestoreShareLinkModelCopyWithImpl(this._self, this._then);

  final FirestoreShareLinkModel _self;
  final $Res Function(FirestoreShareLinkModel) _then;

  /// Create a copy of FirestoreShareLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? validDays = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _self.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      validDays: null == validDays
          ? _self.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as int,
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

/// Adds pattern-matching-related methods to [FirestoreShareLinkModel].
extension FirestoreShareLinkModelPatterns on FirestoreShareLinkModel {
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
    TResult Function(_FirestoreShareLinkModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreShareLinkModel() when $default != null:
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
    TResult Function(_FirestoreShareLinkModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreShareLinkModel():
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
    TResult? Function(_FirestoreShareLinkModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreShareLinkModel() when $default != null:
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
            String groupId,
            int validDays,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreShareLinkModel() when $default != null:
        return $default(_that.id, _that.groupId, _that.validDays,
            _that.createdAt, _that.updatedAt);
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
            String groupId,
            int validDays,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreShareLinkModel():
        return $default(_that.id, _that.groupId, _that.validDays,
            _that.createdAt, _that.updatedAt);
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
            String groupId,
            int validDays,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreShareLinkModel() when $default != null:
        return $default(_that.id, _that.groupId, _that.validDays,
            _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FirestoreShareLinkModel implements FirestoreShareLinkModel {
  const _FirestoreShareLinkModel(
      {required this.id,
      required this.groupId,
      required this.validDays,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});
  factory _FirestoreShareLinkModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreShareLinkModelFromJson(json);

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

  /// Create a copy of FirestoreShareLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirestoreShareLinkModelCopyWith<_FirestoreShareLinkModel> get copyWith =>
      __$FirestoreShareLinkModelCopyWithImpl<_FirestoreShareLinkModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirestoreShareLinkModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirestoreShareLinkModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.validDays, validDays) ||
                other.validDays == validDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, groupId, validDays, createdAt, updatedAt);

  @override
  String toString() {
    return 'FirestoreShareLinkModel(id: $id, groupId: $groupId, validDays: $validDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FirestoreShareLinkModelCopyWith<$Res>
    implements $FirestoreShareLinkModelCopyWith<$Res> {
  factory _$FirestoreShareLinkModelCopyWith(_FirestoreShareLinkModel value,
          $Res Function(_FirestoreShareLinkModel) _then) =
      __$FirestoreShareLinkModelCopyWithImpl;
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
class __$FirestoreShareLinkModelCopyWithImpl<$Res>
    implements _$FirestoreShareLinkModelCopyWith<$Res> {
  __$FirestoreShareLinkModelCopyWithImpl(this._self, this._then);

  final _FirestoreShareLinkModel _self;
  final $Res Function(_FirestoreShareLinkModel) _then;

  /// Create a copy of FirestoreShareLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? validDays = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FirestoreShareLinkModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _self.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      validDays: null == validDays
          ? _self.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as int,
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
