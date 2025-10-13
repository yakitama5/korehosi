// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsConfig {

 ItemOrderModel get defaultOrder; Set<PurchaseStatus> get defaultPurchaseStatus; double? get defaultWishRank;
/// Create a copy of ItemsConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsConfigCopyWith<ItemsConfig> get copyWith => _$ItemsConfigCopyWithImpl<ItemsConfig>(this as ItemsConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsConfig&&(identical(other.defaultOrder, defaultOrder) || other.defaultOrder == defaultOrder)&&const DeepCollectionEquality().equals(other.defaultPurchaseStatus, defaultPurchaseStatus)&&(identical(other.defaultWishRank, defaultWishRank) || other.defaultWishRank == defaultWishRank));
}


@override
int get hashCode => Object.hash(runtimeType,defaultOrder,const DeepCollectionEquality().hash(defaultPurchaseStatus),defaultWishRank);

@override
String toString() {
  return 'ItemsConfig(defaultOrder: $defaultOrder, defaultPurchaseStatus: $defaultPurchaseStatus, defaultWishRank: $defaultWishRank)';
}


}

/// @nodoc
abstract mixin class $ItemsConfigCopyWith<$Res>  {
  factory $ItemsConfigCopyWith(ItemsConfig value, $Res Function(ItemsConfig) _then) = _$ItemsConfigCopyWithImpl;
@useResult
$Res call({
 ItemOrderModel defaultOrder, Set<PurchaseStatus> defaultPurchaseStatus, double? defaultWishRank
});


$ItemOrderModelCopyWith<$Res> get defaultOrder;

}
/// @nodoc
class _$ItemsConfigCopyWithImpl<$Res>
    implements $ItemsConfigCopyWith<$Res> {
  _$ItemsConfigCopyWithImpl(this._self, this._then);

  final ItemsConfig _self;
  final $Res Function(ItemsConfig) _then;

/// Create a copy of ItemsConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultOrder = null,Object? defaultPurchaseStatus = null,Object? defaultWishRank = freezed,}) {
  return _then(_self.copyWith(
defaultOrder: null == defaultOrder ? _self.defaultOrder : defaultOrder // ignore: cast_nullable_to_non_nullable
as ItemOrderModel,defaultPurchaseStatus: null == defaultPurchaseStatus ? _self.defaultPurchaseStatus : defaultPurchaseStatus // ignore: cast_nullable_to_non_nullable
as Set<PurchaseStatus>,defaultWishRank: freezed == defaultWishRank ? _self.defaultWishRank : defaultWishRank // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of ItemsConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemOrderModelCopyWith<$Res> get defaultOrder {
  
  return $ItemOrderModelCopyWith<$Res>(_self.defaultOrder, (value) {
    return _then(_self.copyWith(defaultOrder: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsConfig].
extension ItemsConfigPatterns on ItemsConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsConfig value)  $default,){
final _that = this;
switch (_that) {
case _ItemsConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ItemOrderModel defaultOrder,  Set<PurchaseStatus> defaultPurchaseStatus,  double? defaultWishRank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsConfig() when $default != null:
return $default(_that.defaultOrder,_that.defaultPurchaseStatus,_that.defaultWishRank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ItemOrderModel defaultOrder,  Set<PurchaseStatus> defaultPurchaseStatus,  double? defaultWishRank)  $default,) {final _that = this;
switch (_that) {
case _ItemsConfig():
return $default(_that.defaultOrder,_that.defaultPurchaseStatus,_that.defaultWishRank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ItemOrderModel defaultOrder,  Set<PurchaseStatus> defaultPurchaseStatus,  double? defaultWishRank)?  $default,) {final _that = this;
switch (_that) {
case _ItemsConfig() when $default != null:
return $default(_that.defaultOrder,_that.defaultPurchaseStatus,_that.defaultWishRank);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsConfig implements ItemsConfig {
  const _ItemsConfig({required this.defaultOrder, required final  Set<PurchaseStatus> defaultPurchaseStatus, this.defaultWishRank}): _defaultPurchaseStatus = defaultPurchaseStatus;
  

@override final  ItemOrderModel defaultOrder;
 final  Set<PurchaseStatus> _defaultPurchaseStatus;
@override Set<PurchaseStatus> get defaultPurchaseStatus {
  if (_defaultPurchaseStatus is EqualUnmodifiableSetView) return _defaultPurchaseStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_defaultPurchaseStatus);
}

@override final  double? defaultWishRank;

/// Create a copy of ItemsConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsConfigCopyWith<_ItemsConfig> get copyWith => __$ItemsConfigCopyWithImpl<_ItemsConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsConfig&&(identical(other.defaultOrder, defaultOrder) || other.defaultOrder == defaultOrder)&&const DeepCollectionEquality().equals(other._defaultPurchaseStatus, _defaultPurchaseStatus)&&(identical(other.defaultWishRank, defaultWishRank) || other.defaultWishRank == defaultWishRank));
}


@override
int get hashCode => Object.hash(runtimeType,defaultOrder,const DeepCollectionEquality().hash(_defaultPurchaseStatus),defaultWishRank);

@override
String toString() {
  return 'ItemsConfig(defaultOrder: $defaultOrder, defaultPurchaseStatus: $defaultPurchaseStatus, defaultWishRank: $defaultWishRank)';
}


}

/// @nodoc
abstract mixin class _$ItemsConfigCopyWith<$Res> implements $ItemsConfigCopyWith<$Res> {
  factory _$ItemsConfigCopyWith(_ItemsConfig value, $Res Function(_ItemsConfig) _then) = __$ItemsConfigCopyWithImpl;
@override @useResult
$Res call({
 ItemOrderModel defaultOrder, Set<PurchaseStatus> defaultPurchaseStatus, double? defaultWishRank
});


@override $ItemOrderModelCopyWith<$Res> get defaultOrder;

}
/// @nodoc
class __$ItemsConfigCopyWithImpl<$Res>
    implements _$ItemsConfigCopyWith<$Res> {
  __$ItemsConfigCopyWithImpl(this._self, this._then);

  final _ItemsConfig _self;
  final $Res Function(_ItemsConfig) _then;

/// Create a copy of ItemsConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultOrder = null,Object? defaultPurchaseStatus = null,Object? defaultWishRank = freezed,}) {
  return _then(_ItemsConfig(
defaultOrder: null == defaultOrder ? _self.defaultOrder : defaultOrder // ignore: cast_nullable_to_non_nullable
as ItemOrderModel,defaultPurchaseStatus: null == defaultPurchaseStatus ? _self._defaultPurchaseStatus : defaultPurchaseStatus // ignore: cast_nullable_to_non_nullable
as Set<PurchaseStatus>,defaultWishRank: freezed == defaultWishRank ? _self.defaultWishRank : defaultWishRank // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of ItemsConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemOrderModelCopyWith<$Res> get defaultOrder {
  
  return $ItemOrderModelCopyWith<$Res>(_self.defaultOrder, (value) {
    return _then(_self.copyWith(defaultOrder: value));
  });
}
}

// dart format on
