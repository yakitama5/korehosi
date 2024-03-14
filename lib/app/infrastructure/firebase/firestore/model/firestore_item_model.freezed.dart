// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreItemModel _$FirestoreItemModelFromJson(Map<String, dynamic> json) {
  return _FirestoreItemModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreItemModel {
  String get id => throw _privateConstructorUsedError;
  List<String>? get imagesPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get wanterName => throw _privateConstructorUsedError;
  double get wishRank => throw _privateConstructorUsedError;
  String? get wishSeason => throw _privateConstructorUsedError;
  List<String>? get urls => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreItemModelCopyWith<FirestoreItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreItemModelCopyWith<$Res> {
  factory $FirestoreItemModelCopyWith(
          FirestoreItemModel value, $Res Function(FirestoreItemModel) then) =
      _$FirestoreItemModelCopyWithImpl<$Res, FirestoreItemModel>;
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
class _$FirestoreItemModelCopyWithImpl<$Res, $Val extends FirestoreItemModel>
    implements $FirestoreItemModelCopyWith<$Res> {
  _$FirestoreItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imagesPath: freezed == imagesPath
          ? _value.imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wanterName: freezed == wanterName
          ? _value.wanterName
          : wanterName // ignore: cast_nullable_to_non_nullable
              as String?,
      wishRank: null == wishRank
          ? _value.wishRank
          : wishRank // ignore: cast_nullable_to_non_nullable
              as double,
      wishSeason: freezed == wishSeason
          ? _value.wishSeason
          : wishSeason // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$FirestoreItemModelImplCopyWith<$Res>
    implements $FirestoreItemModelCopyWith<$Res> {
  factory _$$FirestoreItemModelImplCopyWith(_$FirestoreItemModelImpl value,
          $Res Function(_$FirestoreItemModelImpl) then) =
      __$$FirestoreItemModelImplCopyWithImpl<$Res>;
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
class __$$FirestoreItemModelImplCopyWithImpl<$Res>
    extends _$FirestoreItemModelCopyWithImpl<$Res, _$FirestoreItemModelImpl>
    implements _$$FirestoreItemModelImplCopyWith<$Res> {
  __$$FirestoreItemModelImplCopyWithImpl(_$FirestoreItemModelImpl _value,
      $Res Function(_$FirestoreItemModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$FirestoreItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imagesPath: freezed == imagesPath
          ? _value._imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wanterName: freezed == wanterName
          ? _value.wanterName
          : wanterName // ignore: cast_nullable_to_non_nullable
              as String?,
      wishRank: null == wishRank
          ? _value.wishRank
          : wishRank // ignore: cast_nullable_to_non_nullable
              as double,
      wishSeason: freezed == wishSeason
          ? _value.wishSeason
          : wishSeason // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$FirestoreItemModelImpl implements _FirestoreItemModel {
  const _$FirestoreItemModelImpl(
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

  factory _$FirestoreItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreItemModelImplFromJson(json);

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

  @override
  String toString() {
    return 'FirestoreItemModel(id: $id, imagesPath: $imagesPath, name: $name, wanterName: $wanterName, wishRank: $wishRank, wishSeason: $wishSeason, urls: $urls, memo: $memo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreItemModelImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreItemModelImplCopyWith<_$FirestoreItemModelImpl> get copyWith =>
      __$$FirestoreItemModelImplCopyWithImpl<_$FirestoreItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreItemModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreItemModel implements FirestoreItemModel {
  const factory _FirestoreItemModel(
      {required final String id,
      final List<String>? imagesPath,
      required final String name,
      final String? wanterName,
      required final double wishRank,
      final String? wishSeason,
      final List<String>? urls,
      final String? memo,
      @timestampKey final DateTime? createdAt,
      @timestampKey final DateTime? updatedAt}) = _$FirestoreItemModelImpl;

  factory _FirestoreItemModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreItemModelImpl.fromJson;

  @override
  String get id;
  @override
  List<String>? get imagesPath;
  @override
  String get name;
  @override
  String? get wanterName;
  @override
  double get wishRank;
  @override
  String? get wishSeason;
  @override
  List<String>? get urls;
  @override
  String? get memo;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreItemModelImplCopyWith<_$FirestoreItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
