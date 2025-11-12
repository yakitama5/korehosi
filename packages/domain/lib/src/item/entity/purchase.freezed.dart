// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Purchase {

 PurchaseId get id; int? get price; String? get buyerName; DateTime? get planDate; bool get surprise; DateTime? get sentAt; String? get memo; String get uid; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseCopyWith<Purchase> get copyWith => _$PurchaseCopyWithImpl<Purchase>(this as Purchase, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Purchase&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.buyerName, buyerName) || other.buyerName == buyerName)&&(identical(other.planDate, planDate) || other.planDate == planDate)&&(identical(other.surprise, surprise) || other.surprise == surprise)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,price,buyerName,planDate,surprise,sentAt,memo,uid,createdAt,updatedAt);

@override
String toString() {
  return 'Purchase(id: $id, price: $price, buyerName: $buyerName, planDate: $planDate, surprise: $surprise, sentAt: $sentAt, memo: $memo, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PurchaseCopyWith<$Res>  {
  factory $PurchaseCopyWith(Purchase value, $Res Function(Purchase) _then) = _$PurchaseCopyWithImpl;
@useResult
$Res call({
 PurchaseId id, int? price, String? buyerName, DateTime? planDate, bool surprise, DateTime? sentAt, String? memo, String uid, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$PurchaseCopyWithImpl<$Res>
    implements $PurchaseCopyWith<$Res> {
  _$PurchaseCopyWithImpl(this._self, this._then);

  final Purchase _self;
  final $Res Function(Purchase) _then;

/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = freezed,Object? buyerName = freezed,Object? planDate = freezed,Object? surprise = null,Object? sentAt = freezed,Object? memo = freezed,Object? uid = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PurchaseId,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,buyerName: freezed == buyerName ? _self.buyerName : buyerName // ignore: cast_nullable_to_non_nullable
as String?,planDate: freezed == planDate ? _self.planDate : planDate // ignore: cast_nullable_to_non_nullable
as DateTime?,surprise: null == surprise ? _self.surprise : surprise // ignore: cast_nullable_to_non_nullable
as bool,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Purchase].
extension PurchasePatterns on Purchase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Purchase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Purchase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Purchase value)  $default,){
final _that = this;
switch (_that) {
case _Purchase():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Purchase value)?  $default,){
final _that = this;
switch (_that) {
case _Purchase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PurchaseId id,  int? price,  String? buyerName,  DateTime? planDate,  bool surprise,  DateTime? sentAt,  String? memo,  String uid,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Purchase() when $default != null:
return $default(_that.id,_that.price,_that.buyerName,_that.planDate,_that.surprise,_that.sentAt,_that.memo,_that.uid,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PurchaseId id,  int? price,  String? buyerName,  DateTime? planDate,  bool surprise,  DateTime? sentAt,  String? memo,  String uid,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Purchase():
return $default(_that.id,_that.price,_that.buyerName,_that.planDate,_that.surprise,_that.sentAt,_that.memo,_that.uid,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PurchaseId id,  int? price,  String? buyerName,  DateTime? planDate,  bool surprise,  DateTime? sentAt,  String? memo,  String uid,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Purchase() when $default != null:
return $default(_that.id,_that.price,_that.buyerName,_that.planDate,_that.surprise,_that.sentAt,_that.memo,_that.uid,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Purchase implements Purchase {
  const _Purchase({required this.id, this.price, this.buyerName, this.planDate, required this.surprise, this.sentAt, this.memo, required this.uid, required this.createdAt, required this.updatedAt});
  

@override final  PurchaseId id;
@override final  int? price;
@override final  String? buyerName;
@override final  DateTime? planDate;
@override final  bool surprise;
@override final  DateTime? sentAt;
@override final  String? memo;
@override final  String uid;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseCopyWith<_Purchase> get copyWith => __$PurchaseCopyWithImpl<_Purchase>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Purchase&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.buyerName, buyerName) || other.buyerName == buyerName)&&(identical(other.planDate, planDate) || other.planDate == planDate)&&(identical(other.surprise, surprise) || other.surprise == surprise)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,price,buyerName,planDate,surprise,sentAt,memo,uid,createdAt,updatedAt);

@override
String toString() {
  return 'Purchase(id: $id, price: $price, buyerName: $buyerName, planDate: $planDate, surprise: $surprise, sentAt: $sentAt, memo: $memo, uid: $uid, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PurchaseCopyWith<$Res> implements $PurchaseCopyWith<$Res> {
  factory _$PurchaseCopyWith(_Purchase value, $Res Function(_Purchase) _then) = __$PurchaseCopyWithImpl;
@override @useResult
$Res call({
 PurchaseId id, int? price, String? buyerName, DateTime? planDate, bool surprise, DateTime? sentAt, String? memo, String uid, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$PurchaseCopyWithImpl<$Res>
    implements _$PurchaseCopyWith<$Res> {
  __$PurchaseCopyWithImpl(this._self, this._then);

  final _Purchase _self;
  final $Res Function(_Purchase) _then;

/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = freezed,Object? buyerName = freezed,Object? planDate = freezed,Object? surprise = null,Object? sentAt = freezed,Object? memo = freezed,Object? uid = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Purchase(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PurchaseId,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,buyerName: freezed == buyerName ? _self.buyerName : buyerName // ignore: cast_nullable_to_non_nullable
as String?,planDate: freezed == planDate ? _self.planDate : planDate // ignore: cast_nullable_to_non_nullable
as DateTime?,surprise: null == surprise ? _self.surprise : surprise // ignore: cast_nullable_to_non_nullable
as bool,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
