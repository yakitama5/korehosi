// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PurchaseConfig {
  int get maxPriceLength => throw _privateConstructorUsedError;
  int get maxBuyerNameLength => throw _privateConstructorUsedError;
  int get maxMemoLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseConfigCopyWith<PurchaseConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseConfigCopyWith<$Res> {
  factory $PurchaseConfigCopyWith(
          PurchaseConfig value, $Res Function(PurchaseConfig) then) =
      _$PurchaseConfigCopyWithImpl<$Res, PurchaseConfig>;
  @useResult
  $Res call({int maxPriceLength, int maxBuyerNameLength, int maxMemoLength});
}

/// @nodoc
class _$PurchaseConfigCopyWithImpl<$Res, $Val extends PurchaseConfig>
    implements $PurchaseConfigCopyWith<$Res> {
  _$PurchaseConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPriceLength = null,
    Object? maxBuyerNameLength = null,
    Object? maxMemoLength = null,
  }) {
    return _then(_value.copyWith(
      maxPriceLength: null == maxPriceLength
          ? _value.maxPriceLength
          : maxPriceLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxBuyerNameLength: null == maxBuyerNameLength
          ? _value.maxBuyerNameLength
          : maxBuyerNameLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxMemoLength: null == maxMemoLength
          ? _value.maxMemoLength
          : maxMemoLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseConfigImplCopyWith<$Res>
    implements $PurchaseConfigCopyWith<$Res> {
  factory _$$PurchaseConfigImplCopyWith(_$PurchaseConfigImpl value,
          $Res Function(_$PurchaseConfigImpl) then) =
      __$$PurchaseConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPriceLength, int maxBuyerNameLength, int maxMemoLength});
}

/// @nodoc
class __$$PurchaseConfigImplCopyWithImpl<$Res>
    extends _$PurchaseConfigCopyWithImpl<$Res, _$PurchaseConfigImpl>
    implements _$$PurchaseConfigImplCopyWith<$Res> {
  __$$PurchaseConfigImplCopyWithImpl(
      _$PurchaseConfigImpl _value, $Res Function(_$PurchaseConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPriceLength = null,
    Object? maxBuyerNameLength = null,
    Object? maxMemoLength = null,
  }) {
    return _then(_$PurchaseConfigImpl(
      maxPriceLength: null == maxPriceLength
          ? _value.maxPriceLength
          : maxPriceLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxBuyerNameLength: null == maxBuyerNameLength
          ? _value.maxBuyerNameLength
          : maxBuyerNameLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxMemoLength: null == maxMemoLength
          ? _value.maxMemoLength
          : maxMemoLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PurchaseConfigImpl implements _PurchaseConfig {
  const _$PurchaseConfigImpl(
      {required this.maxPriceLength,
      required this.maxBuyerNameLength,
      required this.maxMemoLength});

  @override
  final int maxPriceLength;
  @override
  final int maxBuyerNameLength;
  @override
  final int maxMemoLength;

  @override
  String toString() {
    return 'PurchaseConfig(maxPriceLength: $maxPriceLength, maxBuyerNameLength: $maxBuyerNameLength, maxMemoLength: $maxMemoLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseConfigImpl &&
            (identical(other.maxPriceLength, maxPriceLength) ||
                other.maxPriceLength == maxPriceLength) &&
            (identical(other.maxBuyerNameLength, maxBuyerNameLength) ||
                other.maxBuyerNameLength == maxBuyerNameLength) &&
            (identical(other.maxMemoLength, maxMemoLength) ||
                other.maxMemoLength == maxMemoLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, maxPriceLength, maxBuyerNameLength, maxMemoLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseConfigImplCopyWith<_$PurchaseConfigImpl> get copyWith =>
      __$$PurchaseConfigImplCopyWithImpl<_$PurchaseConfigImpl>(
          this, _$identity);
}

abstract class _PurchaseConfig implements PurchaseConfig {
  const factory _PurchaseConfig(
      {required final int maxPriceLength,
      required final int maxBuyerNameLength,
      required final int maxMemoLength}) = _$PurchaseConfigImpl;

  @override
  int get maxPriceLength;
  @override
  int get maxBuyerNameLength;
  @override
  int get maxMemoLength;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseConfigImplCopyWith<_$PurchaseConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
