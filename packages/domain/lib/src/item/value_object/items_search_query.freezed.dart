// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_search_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsSearchQuery {

 double? get minimumWishRank; List<PurchaseStatus> get purchaseStatuses; ItemsOrder get itemsOrder;
/// Create a copy of ItemsSearchQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsSearchQueryCopyWith<ItemsSearchQuery> get copyWith => _$ItemsSearchQueryCopyWithImpl<ItemsSearchQuery>(this as ItemsSearchQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsSearchQuery&&(identical(other.minimumWishRank, minimumWishRank) || other.minimumWishRank == minimumWishRank)&&const DeepCollectionEquality().equals(other.purchaseStatuses, purchaseStatuses)&&(identical(other.itemsOrder, itemsOrder) || other.itemsOrder == itemsOrder));
}


@override
int get hashCode => Object.hash(runtimeType,minimumWishRank,const DeepCollectionEquality().hash(purchaseStatuses),itemsOrder);

@override
String toString() {
  return 'ItemsSearchQuery(minimumWishRank: $minimumWishRank, purchaseStatuses: $purchaseStatuses, itemsOrder: $itemsOrder)';
}


}

/// @nodoc
abstract mixin class $ItemsSearchQueryCopyWith<$Res>  {
  factory $ItemsSearchQueryCopyWith(ItemsSearchQuery value, $Res Function(ItemsSearchQuery) _then) = _$ItemsSearchQueryCopyWithImpl;
@useResult
$Res call({
 double? minimumWishRank, List<PurchaseStatus> purchaseStatuses, ItemsOrder itemsOrder
});


$ItemsOrderCopyWith<$Res> get itemsOrder;

}
/// @nodoc
class _$ItemsSearchQueryCopyWithImpl<$Res>
    implements $ItemsSearchQueryCopyWith<$Res> {
  _$ItemsSearchQueryCopyWithImpl(this._self, this._then);

  final ItemsSearchQuery _self;
  final $Res Function(ItemsSearchQuery) _then;

/// Create a copy of ItemsSearchQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minimumWishRank = freezed,Object? purchaseStatuses = null,Object? itemsOrder = null,}) {
  return _then(_self.copyWith(
minimumWishRank: freezed == minimumWishRank ? _self.minimumWishRank : minimumWishRank // ignore: cast_nullable_to_non_nullable
as double?,purchaseStatuses: null == purchaseStatuses ? _self.purchaseStatuses : purchaseStatuses // ignore: cast_nullable_to_non_nullable
as List<PurchaseStatus>,itemsOrder: null == itemsOrder ? _self.itemsOrder : itemsOrder // ignore: cast_nullable_to_non_nullable
as ItemsOrder,
  ));
}
/// Create a copy of ItemsSearchQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsOrderCopyWith<$Res> get itemsOrder {
  
  return $ItemsOrderCopyWith<$Res>(_self.itemsOrder, (value) {
    return _then(_self.copyWith(itemsOrder: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsSearchQuery].
extension ItemsSearchQueryPatterns on ItemsSearchQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsSearchQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsSearchQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsSearchQuery value)  $default,){
final _that = this;
switch (_that) {
case _ItemsSearchQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsSearchQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsSearchQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? minimumWishRank,  List<PurchaseStatus> purchaseStatuses,  ItemsOrder itemsOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsSearchQuery() when $default != null:
return $default(_that.minimumWishRank,_that.purchaseStatuses,_that.itemsOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? minimumWishRank,  List<PurchaseStatus> purchaseStatuses,  ItemsOrder itemsOrder)  $default,) {final _that = this;
switch (_that) {
case _ItemsSearchQuery():
return $default(_that.minimumWishRank,_that.purchaseStatuses,_that.itemsOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? minimumWishRank,  List<PurchaseStatus> purchaseStatuses,  ItemsOrder itemsOrder)?  $default,) {final _that = this;
switch (_that) {
case _ItemsSearchQuery() when $default != null:
return $default(_that.minimumWishRank,_that.purchaseStatuses,_that.itemsOrder);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsSearchQuery implements ItemsSearchQuery {
  const _ItemsSearchQuery({this.minimumWishRank, required final  List<PurchaseStatus> purchaseStatuses, required this.itemsOrder}): _purchaseStatuses = purchaseStatuses;
  

@override final  double? minimumWishRank;
 final  List<PurchaseStatus> _purchaseStatuses;
@override List<PurchaseStatus> get purchaseStatuses {
  if (_purchaseStatuses is EqualUnmodifiableListView) return _purchaseStatuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_purchaseStatuses);
}

@override final  ItemsOrder itemsOrder;

/// Create a copy of ItemsSearchQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsSearchQueryCopyWith<_ItemsSearchQuery> get copyWith => __$ItemsSearchQueryCopyWithImpl<_ItemsSearchQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsSearchQuery&&(identical(other.minimumWishRank, minimumWishRank) || other.minimumWishRank == minimumWishRank)&&const DeepCollectionEquality().equals(other._purchaseStatuses, _purchaseStatuses)&&(identical(other.itemsOrder, itemsOrder) || other.itemsOrder == itemsOrder));
}


@override
int get hashCode => Object.hash(runtimeType,minimumWishRank,const DeepCollectionEquality().hash(_purchaseStatuses),itemsOrder);

@override
String toString() {
  return 'ItemsSearchQuery(minimumWishRank: $minimumWishRank, purchaseStatuses: $purchaseStatuses, itemsOrder: $itemsOrder)';
}


}

/// @nodoc
abstract mixin class _$ItemsSearchQueryCopyWith<$Res> implements $ItemsSearchQueryCopyWith<$Res> {
  factory _$ItemsSearchQueryCopyWith(_ItemsSearchQuery value, $Res Function(_ItemsSearchQuery) _then) = __$ItemsSearchQueryCopyWithImpl;
@override @useResult
$Res call({
 double? minimumWishRank, List<PurchaseStatus> purchaseStatuses, ItemsOrder itemsOrder
});


@override $ItemsOrderCopyWith<$Res> get itemsOrder;

}
/// @nodoc
class __$ItemsSearchQueryCopyWithImpl<$Res>
    implements _$ItemsSearchQueryCopyWith<$Res> {
  __$ItemsSearchQueryCopyWithImpl(this._self, this._then);

  final _ItemsSearchQuery _self;
  final $Res Function(_ItemsSearchQuery) _then;

/// Create a copy of ItemsSearchQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minimumWishRank = freezed,Object? purchaseStatuses = null,Object? itemsOrder = null,}) {
  return _then(_ItemsSearchQuery(
minimumWishRank: freezed == minimumWishRank ? _self.minimumWishRank : minimumWishRank // ignore: cast_nullable_to_non_nullable
as double?,purchaseStatuses: null == purchaseStatuses ? _self._purchaseStatuses : purchaseStatuses // ignore: cast_nullable_to_non_nullable
as List<PurchaseStatus>,itemsOrder: null == itemsOrder ? _self.itemsOrder : itemsOrder // ignore: cast_nullable_to_non_nullable
as ItemsOrder,
  ));
}

/// Create a copy of ItemsSearchQuery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsOrderCopyWith<$Res> get itemsOrder {
  
  return $ItemsOrderCopyWith<$Res>(_self.itemsOrder, (value) {
    return _then(_self.copyWith(itemsOrder: value));
  });
}
}

// dart format on
