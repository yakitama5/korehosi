// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemsConfig {
  ItemOrderModel get defaultOrder => throw _privateConstructorUsedError;
  Set<PurchaseStatus> get defaultPurchaseStatus =>
      throw _privateConstructorUsedError;
  double? get defaultWishRank => throw _privateConstructorUsedError;

  /// Create a copy of ItemsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsConfigCopyWith<ItemsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsConfigCopyWith<$Res> {
  factory $ItemsConfigCopyWith(
          ItemsConfig value, $Res Function(ItemsConfig) then) =
      _$ItemsConfigCopyWithImpl<$Res, ItemsConfig>;
  @useResult
  $Res call(
      {ItemOrderModel defaultOrder,
      Set<PurchaseStatus> defaultPurchaseStatus,
      double? defaultWishRank});

  $ItemOrderModelCopyWith<$Res> get defaultOrder;
}

/// @nodoc
class _$ItemsConfigCopyWithImpl<$Res, $Val extends ItemsConfig>
    implements $ItemsConfigCopyWith<$Res> {
  _$ItemsConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultOrder = null,
    Object? defaultPurchaseStatus = null,
    Object? defaultWishRank = freezed,
  }) {
    return _then(_value.copyWith(
      defaultOrder: null == defaultOrder
          ? _value.defaultOrder
          : defaultOrder // ignore: cast_nullable_to_non_nullable
              as ItemOrderModel,
      defaultPurchaseStatus: null == defaultPurchaseStatus
          ? _value.defaultPurchaseStatus
          : defaultPurchaseStatus // ignore: cast_nullable_to_non_nullable
              as Set<PurchaseStatus>,
      defaultWishRank: freezed == defaultWishRank
          ? _value.defaultWishRank
          : defaultWishRank // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of ItemsConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemOrderModelCopyWith<$Res> get defaultOrder {
    return $ItemOrderModelCopyWith<$Res>(_value.defaultOrder, (value) {
      return _then(_value.copyWith(defaultOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsConfigImplCopyWith<$Res>
    implements $ItemsConfigCopyWith<$Res> {
  factory _$$ItemsConfigImplCopyWith(
          _$ItemsConfigImpl value, $Res Function(_$ItemsConfigImpl) then) =
      __$$ItemsConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ItemOrderModel defaultOrder,
      Set<PurchaseStatus> defaultPurchaseStatus,
      double? defaultWishRank});

  @override
  $ItemOrderModelCopyWith<$Res> get defaultOrder;
}

/// @nodoc
class __$$ItemsConfigImplCopyWithImpl<$Res>
    extends _$ItemsConfigCopyWithImpl<$Res, _$ItemsConfigImpl>
    implements _$$ItemsConfigImplCopyWith<$Res> {
  __$$ItemsConfigImplCopyWithImpl(
      _$ItemsConfigImpl _value, $Res Function(_$ItemsConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultOrder = null,
    Object? defaultPurchaseStatus = null,
    Object? defaultWishRank = freezed,
  }) {
    return _then(_$ItemsConfigImpl(
      defaultOrder: null == defaultOrder
          ? _value.defaultOrder
          : defaultOrder // ignore: cast_nullable_to_non_nullable
              as ItemOrderModel,
      defaultPurchaseStatus: null == defaultPurchaseStatus
          ? _value._defaultPurchaseStatus
          : defaultPurchaseStatus // ignore: cast_nullable_to_non_nullable
              as Set<PurchaseStatus>,
      defaultWishRank: freezed == defaultWishRank
          ? _value.defaultWishRank
          : defaultWishRank // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$ItemsConfigImpl implements _ItemsConfig {
  const _$ItemsConfigImpl(
      {required this.defaultOrder,
      required final Set<PurchaseStatus> defaultPurchaseStatus,
      this.defaultWishRank})
      : _defaultPurchaseStatus = defaultPurchaseStatus;

  @override
  final ItemOrderModel defaultOrder;
  final Set<PurchaseStatus> _defaultPurchaseStatus;
  @override
  Set<PurchaseStatus> get defaultPurchaseStatus {
    if (_defaultPurchaseStatus is EqualUnmodifiableSetView)
      return _defaultPurchaseStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_defaultPurchaseStatus);
  }

  @override
  final double? defaultWishRank;

  @override
  String toString() {
    return 'ItemsConfig(defaultOrder: $defaultOrder, defaultPurchaseStatus: $defaultPurchaseStatus, defaultWishRank: $defaultWishRank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsConfigImpl &&
            (identical(other.defaultOrder, defaultOrder) ||
                other.defaultOrder == defaultOrder) &&
            const DeepCollectionEquality()
                .equals(other._defaultPurchaseStatus, _defaultPurchaseStatus) &&
            (identical(other.defaultWishRank, defaultWishRank) ||
                other.defaultWishRank == defaultWishRank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      defaultOrder,
      const DeepCollectionEquality().hash(_defaultPurchaseStatus),
      defaultWishRank);

  /// Create a copy of ItemsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsConfigImplCopyWith<_$ItemsConfigImpl> get copyWith =>
      __$$ItemsConfigImplCopyWithImpl<_$ItemsConfigImpl>(this, _$identity);
}

abstract class _ItemsConfig implements ItemsConfig {
  const factory _ItemsConfig(
      {required final ItemOrderModel defaultOrder,
      required final Set<PurchaseStatus> defaultPurchaseStatus,
      final double? defaultWishRank}) = _$ItemsConfigImpl;

  @override
  ItemOrderModel get defaultOrder;
  @override
  Set<PurchaseStatus> get defaultPurchaseStatus;
  @override
  double? get defaultWishRank;

  /// Create a copy of ItemsConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsConfigImplCopyWith<_$ItemsConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
