// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirestoreItemModel {
  String get id;
  List<String>? get imagesPath;
  String get name;
  String? get wanterName;
  double get wishRank;
  String? get wishSeason;
  List<String>? get urls;
  String? get memo;
  @timestampKey
  DateTime? get createdAt;
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirestoreItemModelCopyWith<FirestoreItemModel> get copyWith =>
      _$FirestoreItemModelCopyWithImpl<FirestoreItemModel>(
          this as FirestoreItemModel, _$identity);

  /// Serializes this FirestoreItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirestoreItemModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.imagesPath, imagesPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wanterName, wanterName) ||
                other.wanterName == wanterName) &&
            (identical(other.wishRank, wishRank) ||
                other.wishRank == wishRank) &&
            (identical(other.wishSeason, wishSeason) ||
                other.wishSeason == wishSeason) &&
            const DeepCollectionEquality().equals(other.urls, urls) &&
            (identical(other.memo, memo) || other.memo == memo) &&
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
      const DeepCollectionEquality().hash(imagesPath),
      name,
      wanterName,
      wishRank,
      wishSeason,
      const DeepCollectionEquality().hash(urls),
      memo,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'FirestoreItemModel(id: $id, imagesPath: $imagesPath, name: $name, wanterName: $wanterName, wishRank: $wishRank, wishSeason: $wishSeason, urls: $urls, memo: $memo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FirestoreItemModelCopyWith<$Res> {
  factory $FirestoreItemModelCopyWith(
          FirestoreItemModel value, $Res Function(FirestoreItemModel) _then) =
      _$FirestoreItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      List<String>? imagesPath,
      String name,
      String? wanterName,
      double wishRank,
      String? wishSeason,
      List<String>? urls,
      String? memo,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreItemModelCopyWithImpl<$Res>
    implements $FirestoreItemModelCopyWith<$Res> {
  _$FirestoreItemModelCopyWithImpl(this._self, this._then);

  final FirestoreItemModel _self;
  final $Res Function(FirestoreItemModel) _then;

  /// Create a copy of FirestoreItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagesPath = freezed,
    Object? name = null,
    Object? wanterName = freezed,
    Object? wishRank = null,
    Object? wishSeason = freezed,
    Object? urls = freezed,
    Object? memo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imagesPath: freezed == imagesPath
          ? _self.imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wanterName: freezed == wanterName
          ? _self.wanterName
          : wanterName // ignore: cast_nullable_to_non_nullable
              as String?,
      wishRank: null == wishRank
          ? _self.wishRank
          : wishRank // ignore: cast_nullable_to_non_nullable
              as double,
      wishSeason: freezed == wishSeason
          ? _self.wishSeason
          : wishSeason // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _self.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      memo: freezed == memo
          ? _self.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
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

/// Adds pattern-matching-related methods to [FirestoreItemModel].
extension FirestoreItemModelPatterns on FirestoreItemModel {
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
    TResult Function(_FirestoreItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreItemModel() when $default != null:
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
    TResult Function(_FirestoreItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreItemModel():
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
    TResult? Function(_FirestoreItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreItemModel() when $default != null:
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
            List<String>? imagesPath,
            String name,
            String? wanterName,
            double wishRank,
            String? wishSeason,
            List<String>? urls,
            String? memo,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirestoreItemModel() when $default != null:
        return $default(
            _that.id,
            _that.imagesPath,
            _that.name,
            _that.wanterName,
            _that.wishRank,
            _that.wishSeason,
            _that.urls,
            _that.memo,
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
            List<String>? imagesPath,
            String name,
            String? wanterName,
            double wishRank,
            String? wishSeason,
            List<String>? urls,
            String? memo,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreItemModel():
        return $default(
            _that.id,
            _that.imagesPath,
            _that.name,
            _that.wanterName,
            _that.wishRank,
            _that.wishSeason,
            _that.urls,
            _that.memo,
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
            List<String>? imagesPath,
            String name,
            String? wanterName,
            double wishRank,
            String? wishSeason,
            List<String>? urls,
            String? memo,
            @timestampKey DateTime? createdAt,
            @timestampKey DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirestoreItemModel() when $default != null:
        return $default(
            _that.id,
            _that.imagesPath,
            _that.name,
            _that.wanterName,
            _that.wishRank,
            _that.wishSeason,
            _that.urls,
            _that.memo,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FirestoreItemModel implements FirestoreItemModel {
  const _FirestoreItemModel(
      {required this.id,
      final List<String>? imagesPath,
      required this.name,
      this.wanterName,
      required this.wishRank,
      this.wishSeason,
      final List<String>? urls,
      this.memo,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt})
      : _imagesPath = imagesPath,
        _urls = urls;
  factory _FirestoreItemModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreItemModelFromJson(json);

  @override
  final String id;
  final List<String>? _imagesPath;
  @override
  List<String>? get imagesPath {
    final value = _imagesPath;
    if (value == null) return null;
    if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String name;
  @override
  final String? wanterName;
  @override
  final double wishRank;
  @override
  final String? wishSeason;
  final List<String>? _urls;
  @override
  List<String>? get urls {
    final value = _urls;
    if (value == null) return null;
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? memo;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  /// Create a copy of FirestoreItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirestoreItemModelCopyWith<_FirestoreItemModel> get copyWith =>
      __$FirestoreItemModelCopyWithImpl<_FirestoreItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirestoreItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirestoreItemModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._imagesPath, _imagesPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wanterName, wanterName) ||
                other.wanterName == wanterName) &&
            (identical(other.wishRank, wishRank) ||
                other.wishRank == wishRank) &&
            (identical(other.wishSeason, wishSeason) ||
                other.wishSeason == wishSeason) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.memo, memo) || other.memo == memo) &&
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
      const DeepCollectionEquality().hash(_imagesPath),
      name,
      wanterName,
      wishRank,
      wishSeason,
      const DeepCollectionEquality().hash(_urls),
      memo,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'FirestoreItemModel(id: $id, imagesPath: $imagesPath, name: $name, wanterName: $wanterName, wishRank: $wishRank, wishSeason: $wishSeason, urls: $urls, memo: $memo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FirestoreItemModelCopyWith<$Res>
    implements $FirestoreItemModelCopyWith<$Res> {
  factory _$FirestoreItemModelCopyWith(
          _FirestoreItemModel value, $Res Function(_FirestoreItemModel) _then) =
      __$FirestoreItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      List<String>? imagesPath,
      String name,
      String? wanterName,
      double wishRank,
      String? wishSeason,
      List<String>? urls,
      String? memo,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$FirestoreItemModelCopyWithImpl<$Res>
    implements _$FirestoreItemModelCopyWith<$Res> {
  __$FirestoreItemModelCopyWithImpl(this._self, this._then);

  final _FirestoreItemModel _self;
  final $Res Function(_FirestoreItemModel) _then;

  /// Create a copy of FirestoreItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? imagesPath = freezed,
    Object? name = null,
    Object? wanterName = freezed,
    Object? wishRank = null,
    Object? wishSeason = freezed,
    Object? urls = freezed,
    Object? memo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FirestoreItemModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imagesPath: freezed == imagesPath
          ? _self._imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wanterName: freezed == wanterName
          ? _self.wanterName
          : wanterName // ignore: cast_nullable_to_non_nullable
              as String?,
      wishRank: null == wishRank
          ? _self.wishRank
          : wishRank // ignore: cast_nullable_to_non_nullable
              as double,
      wishSeason: freezed == wishSeason
          ? _self.wishSeason
          : wishSeason // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _self._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      memo: freezed == memo
          ? _self.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
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
