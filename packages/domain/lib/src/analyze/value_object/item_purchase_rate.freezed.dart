// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_purchase_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemPurchaseRate {

 int get purchasedItemCount; int get itemCount; double get purchaseRate;
/// Create a copy of ItemPurchaseRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemPurchaseRateCopyWith<ItemPurchaseRate> get copyWith => _$ItemPurchaseRateCopyWithImpl<ItemPurchaseRate>(this as ItemPurchaseRate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemPurchaseRate&&(identical(other.purchasedItemCount, purchasedItemCount) || other.purchasedItemCount == purchasedItemCount)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.purchaseRate, purchaseRate) || other.purchaseRate == purchaseRate));
}


@override
int get hashCode => Object.hash(runtimeType,purchasedItemCount,itemCount,purchaseRate);

@override
String toString() {
  return 'ItemPurchaseRate(purchasedItemCount: $purchasedItemCount, itemCount: $itemCount, purchaseRate: $purchaseRate)';
}


}

/// @nodoc
abstract mixin class $ItemPurchaseRateCopyWith<$Res>  {
  factory $ItemPurchaseRateCopyWith(ItemPurchaseRate value, $Res Function(ItemPurchaseRate) _then) = _$ItemPurchaseRateCopyWithImpl;
@useResult
$Res call({
 int purchasedItemCount, int itemCount, double purchaseRate
});




}
/// @nodoc
class _$ItemPurchaseRateCopyWithImpl<$Res>
    implements $ItemPurchaseRateCopyWith<$Res> {
  _$ItemPurchaseRateCopyWithImpl(this._self, this._then);

  final ItemPurchaseRate _self;
  final $Res Function(ItemPurchaseRate) _then;

/// Create a copy of ItemPurchaseRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purchasedItemCount = null,Object? itemCount = null,Object? purchaseRate = null,}) {
  return _then(_self.copyWith(
purchasedItemCount: null == purchasedItemCount ? _self.purchasedItemCount : purchasedItemCount // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,purchaseRate: null == purchaseRate ? _self.purchaseRate : purchaseRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemPurchaseRate].
extension ItemPurchaseRatePatterns on ItemPurchaseRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemPurchaseRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemPurchaseRate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemPurchaseRate value)  $default,){
final _that = this;
switch (_that) {
case _ItemPurchaseRate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemPurchaseRate value)?  $default,){
final _that = this;
switch (_that) {
case _ItemPurchaseRate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int purchasedItemCount,  int itemCount,  double purchaseRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemPurchaseRate() when $default != null:
return $default(_that.purchasedItemCount,_that.itemCount,_that.purchaseRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int purchasedItemCount,  int itemCount,  double purchaseRate)  $default,) {final _that = this;
switch (_that) {
case _ItemPurchaseRate():
return $default(_that.purchasedItemCount,_that.itemCount,_that.purchaseRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int purchasedItemCount,  int itemCount,  double purchaseRate)?  $default,) {final _that = this;
switch (_that) {
case _ItemPurchaseRate() when $default != null:
return $default(_that.purchasedItemCount,_that.itemCount,_that.purchaseRate);case _:
  return null;

}
}

}

/// @nodoc


class _ItemPurchaseRate implements ItemPurchaseRate {
  const _ItemPurchaseRate({required this.purchasedItemCount, required this.itemCount, required this.purchaseRate});
  

@override final  int purchasedItemCount;
@override final  int itemCount;
@override final  double purchaseRate;

/// Create a copy of ItemPurchaseRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemPurchaseRateCopyWith<_ItemPurchaseRate> get copyWith => __$ItemPurchaseRateCopyWithImpl<_ItemPurchaseRate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemPurchaseRate&&(identical(other.purchasedItemCount, purchasedItemCount) || other.purchasedItemCount == purchasedItemCount)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.purchaseRate, purchaseRate) || other.purchaseRate == purchaseRate));
}


@override
int get hashCode => Object.hash(runtimeType,purchasedItemCount,itemCount,purchaseRate);

@override
String toString() {
  return 'ItemPurchaseRate(purchasedItemCount: $purchasedItemCount, itemCount: $itemCount, purchaseRate: $purchaseRate)';
}


}

/// @nodoc
abstract mixin class _$ItemPurchaseRateCopyWith<$Res> implements $ItemPurchaseRateCopyWith<$Res> {
  factory _$ItemPurchaseRateCopyWith(_ItemPurchaseRate value, $Res Function(_ItemPurchaseRate) _then) = __$ItemPurchaseRateCopyWithImpl;
@override @useResult
$Res call({
 int purchasedItemCount, int itemCount, double purchaseRate
});




}
/// @nodoc
class __$ItemPurchaseRateCopyWithImpl<$Res>
    implements _$ItemPurchaseRateCopyWith<$Res> {
  __$ItemPurchaseRateCopyWithImpl(this._self, this._then);

  final _ItemPurchaseRate _self;
  final $Res Function(_ItemPurchaseRate) _then;

/// Create a copy of ItemPurchaseRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purchasedItemCount = null,Object? itemCount = null,Object? purchaseRate = null,}) {
  return _then(_ItemPurchaseRate(
purchasedItemCount: null == purchasedItemCount ? _self.purchasedItemCount : purchasedItemCount // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,purchaseRate: null == purchaseRate ? _self.purchaseRate : purchaseRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
