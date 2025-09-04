// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_in_purchase_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppInPurchaseProduct {

 String get id; String get title; double get price;
/// Create a copy of AppInPurchaseProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppInPurchaseProductCopyWith<AppInPurchaseProduct> get copyWith => _$AppInPurchaseProductCopyWithImpl<AppInPurchaseProduct>(this as AppInPurchaseProduct, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInPurchaseProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price);

@override
String toString() {
  return 'AppInPurchaseProduct(id: $id, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class $AppInPurchaseProductCopyWith<$Res>  {
  factory $AppInPurchaseProductCopyWith(AppInPurchaseProduct value, $Res Function(AppInPurchaseProduct) _then) = _$AppInPurchaseProductCopyWithImpl;
@useResult
$Res call({
 String id, String title, double price
});




}
/// @nodoc
class _$AppInPurchaseProductCopyWithImpl<$Res>
    implements $AppInPurchaseProductCopyWith<$Res> {
  _$AppInPurchaseProductCopyWithImpl(this._self, this._then);

  final AppInPurchaseProduct _self;
  final $Res Function(AppInPurchaseProduct) _then;

/// Create a copy of AppInPurchaseProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AppInPurchaseProduct].
extension AppInPurchaseProductPatterns on AppInPurchaseProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppInPurchaseProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppInPurchaseProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppInPurchaseProduct value)  $default,){
final _that = this;
switch (_that) {
case _AppInPurchaseProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppInPurchaseProduct value)?  $default,){
final _that = this;
switch (_that) {
case _AppInPurchaseProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppInPurchaseProduct() when $default != null:
return $default(_that.id,_that.title,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double price)  $default,) {final _that = this;
switch (_that) {
case _AppInPurchaseProduct():
return $default(_that.id,_that.title,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double price)?  $default,) {final _that = this;
switch (_that) {
case _AppInPurchaseProduct() when $default != null:
return $default(_that.id,_that.title,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _AppInPurchaseProduct implements AppInPurchaseProduct {
  const _AppInPurchaseProduct({required this.id, required this.title, required this.price});
  

@override final  String id;
@override final  String title;
@override final  double price;

/// Create a copy of AppInPurchaseProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppInPurchaseProductCopyWith<_AppInPurchaseProduct> get copyWith => __$AppInPurchaseProductCopyWithImpl<_AppInPurchaseProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppInPurchaseProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price);

@override
String toString() {
  return 'AppInPurchaseProduct(id: $id, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class _$AppInPurchaseProductCopyWith<$Res> implements $AppInPurchaseProductCopyWith<$Res> {
  factory _$AppInPurchaseProductCopyWith(_AppInPurchaseProduct value, $Res Function(_AppInPurchaseProduct) _then) = __$AppInPurchaseProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double price
});




}
/// @nodoc
class __$AppInPurchaseProductCopyWithImpl<$Res>
    implements _$AppInPurchaseProductCopyWith<$Res> {
  __$AppInPurchaseProductCopyWithImpl(this._self, this._then);

  final _AppInPurchaseProduct _self;
  final $Res Function(_AppInPurchaseProduct) _then;

/// Create a copy of AppInPurchaseProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,}) {
  return _then(_AppInPurchaseProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
