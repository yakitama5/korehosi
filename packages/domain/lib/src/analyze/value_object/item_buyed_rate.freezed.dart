// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_buyed_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemBuyedRate {

 int get buyedItemCount; int get itemCount; double get buyedRate;
/// Create a copy of ItemBuyedRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemBuyedRateCopyWith<ItemBuyedRate> get copyWith => _$ItemBuyedRateCopyWithImpl<ItemBuyedRate>(this as ItemBuyedRate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemBuyedRate&&(identical(other.buyedItemCount, buyedItemCount) || other.buyedItemCount == buyedItemCount)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.buyedRate, buyedRate) || other.buyedRate == buyedRate));
}


@override
int get hashCode => Object.hash(runtimeType,buyedItemCount,itemCount,buyedRate);

@override
String toString() {
  return 'ItemBuyedRate(buyedItemCount: $buyedItemCount, itemCount: $itemCount, buyedRate: $buyedRate)';
}


}

/// @nodoc
abstract mixin class $ItemBuyedRateCopyWith<$Res>  {
  factory $ItemBuyedRateCopyWith(ItemBuyedRate value, $Res Function(ItemBuyedRate) _then) = _$ItemBuyedRateCopyWithImpl;
@useResult
$Res call({
 int buyedItemCount, int itemCount, double buyedRate
});




}
/// @nodoc
class _$ItemBuyedRateCopyWithImpl<$Res>
    implements $ItemBuyedRateCopyWith<$Res> {
  _$ItemBuyedRateCopyWithImpl(this._self, this._then);

  final ItemBuyedRate _self;
  final $Res Function(ItemBuyedRate) _then;

/// Create a copy of ItemBuyedRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buyedItemCount = null,Object? itemCount = null,Object? buyedRate = null,}) {
  return _then(_self.copyWith(
buyedItemCount: null == buyedItemCount ? _self.buyedItemCount : buyedItemCount // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,buyedRate: null == buyedRate ? _self.buyedRate : buyedRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemBuyedRate].
extension ItemBuyedRatePatterns on ItemBuyedRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemBuyedRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemBuyedRate() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemBuyedRate value)  $default,){
final _that = this;
switch (_that) {
case _ItemBuyedRate():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemBuyedRate value)?  $default,){
final _that = this;
switch (_that) {
case _ItemBuyedRate() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int buyedItemCount,  int itemCount,  double buyedRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemBuyedRate() when $default != null:
return $default(_that.buyedItemCount,_that.itemCount,_that.buyedRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int buyedItemCount,  int itemCount,  double buyedRate)  $default,) {final _that = this;
switch (_that) {
case _ItemBuyedRate():
return $default(_that.buyedItemCount,_that.itemCount,_that.buyedRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int buyedItemCount,  int itemCount,  double buyedRate)?  $default,) {final _that = this;
switch (_that) {
case _ItemBuyedRate() when $default != null:
return $default(_that.buyedItemCount,_that.itemCount,_that.buyedRate);case _:
  return null;

}
}

}

/// @nodoc


class _ItemBuyedRate implements ItemBuyedRate {
  const _ItemBuyedRate({required this.buyedItemCount, required this.itemCount, required this.buyedRate});
  

@override final  int buyedItemCount;
@override final  int itemCount;
@override final  double buyedRate;

/// Create a copy of ItemBuyedRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemBuyedRateCopyWith<_ItemBuyedRate> get copyWith => __$ItemBuyedRateCopyWithImpl<_ItemBuyedRate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemBuyedRate&&(identical(other.buyedItemCount, buyedItemCount) || other.buyedItemCount == buyedItemCount)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.buyedRate, buyedRate) || other.buyedRate == buyedRate));
}


@override
int get hashCode => Object.hash(runtimeType,buyedItemCount,itemCount,buyedRate);

@override
String toString() {
  return 'ItemBuyedRate(buyedItemCount: $buyedItemCount, itemCount: $itemCount, buyedRate: $buyedRate)';
}


}

/// @nodoc
abstract mixin class _$ItemBuyedRateCopyWith<$Res> implements $ItemBuyedRateCopyWith<$Res> {
  factory _$ItemBuyedRateCopyWith(_ItemBuyedRate value, $Res Function(_ItemBuyedRate) _then) = __$ItemBuyedRateCopyWithImpl;
@override @useResult
$Res call({
 int buyedItemCount, int itemCount, double buyedRate
});




}
/// @nodoc
class __$ItemBuyedRateCopyWithImpl<$Res>
    implements _$ItemBuyedRateCopyWith<$Res> {
  __$ItemBuyedRateCopyWithImpl(this._self, this._then);

  final _ItemBuyedRate _self;
  final $Res Function(_ItemBuyedRate) _then;

/// Create a copy of ItemBuyedRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buyedItemCount = null,Object? itemCount = null,Object? buyedRate = null,}) {
  return _then(_ItemBuyedRate(
buyedItemCount: null == buyedItemCount ? _self.buyedItemCount : buyedItemCount // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,buyedRate: null == buyedRate ? _self.buyedRate : buyedRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
