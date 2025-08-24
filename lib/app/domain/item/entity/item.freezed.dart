// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Item {
  String get id;
  List<String>? get imagesPath;
  String get name;
  String? get wanterName;
  double get wishRank;
  String? get wishSeason;
  List<String>? get urls;
  String? get memo;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemCopyWith<Item> get copyWith =>
      _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Item &&
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
    return 'Item(id: $id, imagesPath: $imagesPath, name: $name, wanterName: $wanterName, wishRank: $wishRank, wishSeason: $wishSeason, urls: $urls, memo: $memo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) =
      _$ItemCopyWithImpl;
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
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

  /// Create a copy of Item
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
    Object? createdAt = null,
    Object? updatedAt = null,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
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
    TResult Function(_Item value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
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
    TResult Function(_Item value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item():
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
    TResult? Function(_Item value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
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
            DateTime createdAt,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
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
            DateTime createdAt,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item():
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
            DateTime createdAt,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
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
class _Item implements Item {
  const _Item(
      {required this.id,
      final List<String>? imagesPath,
      required this.name,
      this.wanterName,
      required this.wishRank,
      this.wishSeason,
      final List<String>? urls,
      this.memo,
      required this.createdAt,
      required this.updatedAt})
      : _imagesPath = imagesPath,
        _urls = urls;
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
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
    return 'Item(id: $id, imagesPath: $imagesPath, name: $name, wanterName: $wanterName, wishRank: $wishRank, wishSeason: $wishSeason, urls: $urls, memo: $memo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) =
      __$ItemCopyWithImpl;
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
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

  /// Create a copy of Item
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
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Item(
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
