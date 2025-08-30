// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_sum_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlySumPrice {
  DateTime get yearMonth;
  int get sumPrice;
  int get count;

  /// Create a copy of MonthlySumPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlySumPriceCopyWith<MonthlySumPrice> get copyWith =>
      _$MonthlySumPriceCopyWithImpl<MonthlySumPrice>(
          this as MonthlySumPrice, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonthlySumPrice &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.sumPrice, sumPrice) ||
                other.sumPrice == sumPrice) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, sumPrice, count);

  @override
  String toString() {
    return 'MonthlySumPrice(yearMonth: $yearMonth, sumPrice: $sumPrice, count: $count)';
  }
}

/// @nodoc
abstract mixin class $MonthlySumPriceCopyWith<$Res> {
  factory $MonthlySumPriceCopyWith(
          MonthlySumPrice value, $Res Function(MonthlySumPrice) _then) =
      _$MonthlySumPriceCopyWithImpl;
  @useResult
  $Res call({DateTime yearMonth, int sumPrice, int count});
}

/// @nodoc
class _$MonthlySumPriceCopyWithImpl<$Res>
    implements $MonthlySumPriceCopyWith<$Res> {
  _$MonthlySumPriceCopyWithImpl(this._self, this._then);

  final MonthlySumPrice _self;
  final $Res Function(MonthlySumPrice) _then;

  /// Create a copy of MonthlySumPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonth = null,
    Object? sumPrice = null,
    Object? count = null,
  }) {
    return _then(_self.copyWith(
      yearMonth: null == yearMonth
          ? _self.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sumPrice: null == sumPrice
          ? _self.sumPrice
          : sumPrice // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [MonthlySumPrice].
extension MonthlySumPricePatterns on MonthlySumPrice {
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
    TResult Function(_MonthlySumPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MonthlySumPrice() when $default != null:
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
    TResult Function(_MonthlySumPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlySumPrice():
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
    TResult? Function(_MonthlySumPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlySumPrice() when $default != null:
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
    TResult Function(DateTime yearMonth, int sumPrice, int count)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MonthlySumPrice() when $default != null:
        return $default(_that.yearMonth, _that.sumPrice, _that.count);
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
    TResult Function(DateTime yearMonth, int sumPrice, int count) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlySumPrice():
        return $default(_that.yearMonth, _that.sumPrice, _that.count);
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
    TResult? Function(DateTime yearMonth, int sumPrice, int count)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlySumPrice() when $default != null:
        return $default(_that.yearMonth, _that.sumPrice, _that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MonthlySumPrice implements MonthlySumPrice {
  const _MonthlySumPrice(
      {required this.yearMonth, required this.sumPrice, required this.count});

  @override
  final DateTime yearMonth;
  @override
  final int sumPrice;
  @override
  final int count;

  /// Create a copy of MonthlySumPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlySumPriceCopyWith<_MonthlySumPrice> get copyWith =>
      __$MonthlySumPriceCopyWithImpl<_MonthlySumPrice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthlySumPrice &&
            (identical(other.yearMonth, yearMonth) ||
                other.yearMonth == yearMonth) &&
            (identical(other.sumPrice, sumPrice) ||
                other.sumPrice == sumPrice) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearMonth, sumPrice, count);

  @override
  String toString() {
    return 'MonthlySumPrice(yearMonth: $yearMonth, sumPrice: $sumPrice, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$MonthlySumPriceCopyWith<$Res>
    implements $MonthlySumPriceCopyWith<$Res> {
  factory _$MonthlySumPriceCopyWith(
          _MonthlySumPrice value, $Res Function(_MonthlySumPrice) _then) =
      __$MonthlySumPriceCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime yearMonth, int sumPrice, int count});
}

/// @nodoc
class __$MonthlySumPriceCopyWithImpl<$Res>
    implements _$MonthlySumPriceCopyWith<$Res> {
  __$MonthlySumPriceCopyWithImpl(this._self, this._then);

  final _MonthlySumPrice _self;
  final $Res Function(_MonthlySumPrice) _then;

  /// Create a copy of MonthlySumPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? yearMonth = null,
    Object? sumPrice = null,
    Object? count = null,
  }) {
    return _then(_MonthlySumPrice(
      yearMonth: null == yearMonth
          ? _self.yearMonth
          : yearMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sumPrice: null == sumPrice
          ? _self.sumPrice
          : sumPrice // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
