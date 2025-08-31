// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemOrderModel {

 ItemOrderKey get key; SortOrder get sortOrder;
/// Create a copy of ItemOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemOrderModelCopyWith<ItemOrderModel> get copyWith => _$ItemOrderModelCopyWithImpl<ItemOrderModel>(this as ItemOrderModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemOrderModel&&(identical(other.key, key) || other.key == key)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,key,sortOrder);

@override
String toString() {
  return 'ItemOrderModel(key: $key, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ItemOrderModelCopyWith<$Res>  {
  factory $ItemOrderModelCopyWith(ItemOrderModel value, $Res Function(ItemOrderModel) _then) = _$ItemOrderModelCopyWithImpl;
@useResult
$Res call({
 ItemOrderKey key, SortOrder sortOrder
});




}
/// @nodoc
class _$ItemOrderModelCopyWithImpl<$Res>
    implements $ItemOrderModelCopyWith<$Res> {
  _$ItemOrderModelCopyWithImpl(this._self, this._then);

  final ItemOrderModel _self;
  final $Res Function(ItemOrderModel) _then;

/// Create a copy of ItemOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as ItemOrderKey,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemOrderModel].
extension ItemOrderModelPatterns on ItemOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _ItemOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _ItemOrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ItemOrderKey key,  SortOrder sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemOrderModel() when $default != null:
return $default(_that.key,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ItemOrderKey key,  SortOrder sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ItemOrderModel():
return $default(_that.key,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ItemOrderKey key,  SortOrder sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ItemOrderModel() when $default != null:
return $default(_that.key,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _ItemOrderModel extends ItemOrderModel {
  const _ItemOrderModel({required this.key, required this.sortOrder}): super._();
  

@override final  ItemOrderKey key;
@override final  SortOrder sortOrder;

/// Create a copy of ItemOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemOrderModelCopyWith<_ItemOrderModel> get copyWith => __$ItemOrderModelCopyWithImpl<_ItemOrderModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemOrderModel&&(identical(other.key, key) || other.key == key)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,key,sortOrder);

@override
String toString() {
  return 'ItemOrderModel(key: $key, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ItemOrderModelCopyWith<$Res> implements $ItemOrderModelCopyWith<$Res> {
  factory _$ItemOrderModelCopyWith(_ItemOrderModel value, $Res Function(_ItemOrderModel) _then) = __$ItemOrderModelCopyWithImpl;
@override @useResult
$Res call({
 ItemOrderKey key, SortOrder sortOrder
});




}
/// @nodoc
class __$ItemOrderModelCopyWithImpl<$Res>
    implements _$ItemOrderModelCopyWith<$Res> {
  __$ItemOrderModelCopyWithImpl(this._self, this._then);

  final _ItemOrderModel _self;
  final $Res Function(_ItemOrderModel) _then;

/// Create a copy of ItemOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? sortOrder = null,}) {
  return _then(_ItemOrderModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as ItemOrderKey,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

// dart format on
