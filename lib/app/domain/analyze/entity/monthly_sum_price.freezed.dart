// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_sum_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MonthlySumPrice {
  DateTime get yearMonth => throw _privateConstructorUsedError;
  int get sumPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonthlySumPriceCopyWith<MonthlySumPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlySumPriceCopyWith<$Res> {
  factory $MonthlySumPriceCopyWith(
          MonthlySumPrice value, $Res Function(MonthlySumPrice) then) =
      _$MonthlySumPriceCopyWithImpl<$Res, MonthlySumPrice>;
  @useResult
  $Res call({DateTime yearMonth, int sumPrice, int count});
}

/// @nodoc
class _$MonthlySumPriceCopyWithImpl<$Res, $Val extends MonthlySumPrice>
    implements $MonthlySumPriceCopyWith<$Res> {
  _$MonthlySumPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? sumPrice = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      yearMonth: null == yearMonth
          ? _value.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sumPrice: null == sumPrice
          ? _value.sumPrice
          : sumPrice // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlySumPriceImplCopyWith<$Res>
    implements $MonthlySumPriceCopyWith<$Res> {
  factory _$$MonthlySumPriceImplCopyWith(_$MonthlySumPriceImpl value,
          $Res Function(_$MonthlySumPriceImpl) then) =
      __$$MonthlySumPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime yearMonth, int sumPrice, int count});
}

/// @nodoc
class __$$MonthlySumPriceImplCopyWithImpl<$Res>
    extends _$MonthlySumPriceCopyWithImpl<$Res, _$MonthlySumPriceImpl>
    implements _$$MonthlySumPriceImplCopyWith<$Res> {
  __$$MonthlySumPriceImplCopyWithImpl(
      _$MonthlySumPriceImpl _value, $Res Function(_$MonthlySumPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? sumPrice = null,
    Object? count = null,
  }) {
    return _then(_$MonthlySumPriceImpl(
      yearMonth: null == yearMonth
          ? _value.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sumPrice: null == sumPrice
          ? _value.sumPrice
          : sumPrice // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MonthlySumPriceImpl implements _MonthlySumPrice {
  const _$MonthlySumPriceImpl(
      {required this.yearMonth, required this.sumPrice, required this.count});

  @override
  final DateTime yearMonth;
  @override
  final int sumPrice;
  @override
  final int count;

  @override
  String toString() {
    return 'MonthlySumPrice(yearMonth: $yearMonth, sumPrice: $sumPrice, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlySumPriceImpl &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.sumPrice, sumPrice) ||
                other.sumPrice == sumPrice) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, sumPrice, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlySumPriceImplCopyWith<_$MonthlySumPriceImpl> get copyWith =>
      __$$MonthlySumPriceImplCopyWithImpl<_$MonthlySumPriceImpl>(
          this, _$identity);
}

abstract class _MonthlySumPrice implements MonthlySumPrice {
  const factory _MonthlySumPrice(
      {required final DateTime yearMonth,
      required final int sumPrice,
      required final int count}) = _$MonthlySumPriceImpl;

  @override
  DateTime get yearMonth;
  @override
  int get sumPrice;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$MonthlySumPriceImplCopyWith<_$MonthlySumPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
