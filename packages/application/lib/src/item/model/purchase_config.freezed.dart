// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PurchaseConfig {

 int get maxPriceLength; int get maxBuyerNameLength; int get maxMemoLength;
/// Create a copy of PurchaseConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseConfigCopyWith<PurchaseConfig> get copyWith => _$PurchaseConfigCopyWithImpl<PurchaseConfig>(this as PurchaseConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseConfig&&(identical(other.maxPriceLength, maxPriceLength) || other.maxPriceLength == maxPriceLength)&&(identical(other.maxBuyerNameLength, maxBuyerNameLength) || other.maxBuyerNameLength == maxBuyerNameLength)&&(identical(other.maxMemoLength, maxMemoLength) || other.maxMemoLength == maxMemoLength));
}


@override
int get hashCode => Object.hash(runtimeType,maxPriceLength,maxBuyerNameLength,maxMemoLength);

@override
String toString() {
  return 'PurchaseConfig(maxPriceLength: $maxPriceLength, maxBuyerNameLength: $maxBuyerNameLength, maxMemoLength: $maxMemoLength)';
}


}

/// @nodoc
abstract mixin class $PurchaseConfigCopyWith<$Res>  {
  factory $PurchaseConfigCopyWith(PurchaseConfig value, $Res Function(PurchaseConfig) _then) = _$PurchaseConfigCopyWithImpl;
@useResult
$Res call({
 int maxPriceLength, int maxBuyerNameLength, int maxMemoLength
});




}
/// @nodoc
class _$PurchaseConfigCopyWithImpl<$Res>
    implements $PurchaseConfigCopyWith<$Res> {
  _$PurchaseConfigCopyWithImpl(this._self, this._then);

  final PurchaseConfig _self;
  final $Res Function(PurchaseConfig) _then;

/// Create a copy of PurchaseConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxPriceLength = null,Object? maxBuyerNameLength = null,Object? maxMemoLength = null,}) {
  return _then(_self.copyWith(
maxPriceLength: null == maxPriceLength ? _self.maxPriceLength : maxPriceLength // ignore: cast_nullable_to_non_nullable
as int,maxBuyerNameLength: null == maxBuyerNameLength ? _self.maxBuyerNameLength : maxBuyerNameLength // ignore: cast_nullable_to_non_nullable
as int,maxMemoLength: null == maxMemoLength ? _self.maxMemoLength : maxMemoLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseConfig].
extension PurchaseConfigPatterns on PurchaseConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseConfig value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseConfig value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxPriceLength,  int maxBuyerNameLength,  int maxMemoLength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseConfig() when $default != null:
return $default(_that.maxPriceLength,_that.maxBuyerNameLength,_that.maxMemoLength);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxPriceLength,  int maxBuyerNameLength,  int maxMemoLength)  $default,) {final _that = this;
switch (_that) {
case _PurchaseConfig():
return $default(_that.maxPriceLength,_that.maxBuyerNameLength,_that.maxMemoLength);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxPriceLength,  int maxBuyerNameLength,  int maxMemoLength)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseConfig() when $default != null:
return $default(_that.maxPriceLength,_that.maxBuyerNameLength,_that.maxMemoLength);case _:
  return null;

}
}

}

/// @nodoc


class _PurchaseConfig implements PurchaseConfig {
  const _PurchaseConfig({required this.maxPriceLength, required this.maxBuyerNameLength, required this.maxMemoLength});
  

@override final  int maxPriceLength;
@override final  int maxBuyerNameLength;
@override final  int maxMemoLength;

/// Create a copy of PurchaseConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseConfigCopyWith<_PurchaseConfig> get copyWith => __$PurchaseConfigCopyWithImpl<_PurchaseConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseConfig&&(identical(other.maxPriceLength, maxPriceLength) || other.maxPriceLength == maxPriceLength)&&(identical(other.maxBuyerNameLength, maxBuyerNameLength) || other.maxBuyerNameLength == maxBuyerNameLength)&&(identical(other.maxMemoLength, maxMemoLength) || other.maxMemoLength == maxMemoLength));
}


@override
int get hashCode => Object.hash(runtimeType,maxPriceLength,maxBuyerNameLength,maxMemoLength);

@override
String toString() {
  return 'PurchaseConfig(maxPriceLength: $maxPriceLength, maxBuyerNameLength: $maxBuyerNameLength, maxMemoLength: $maxMemoLength)';
}


}

/// @nodoc
abstract mixin class _$PurchaseConfigCopyWith<$Res> implements $PurchaseConfigCopyWith<$Res> {
  factory _$PurchaseConfigCopyWith(_PurchaseConfig value, $Res Function(_PurchaseConfig) _then) = __$PurchaseConfigCopyWithImpl;
@override @useResult
$Res call({
 int maxPriceLength, int maxBuyerNameLength, int maxMemoLength
});




}
/// @nodoc
class __$PurchaseConfigCopyWithImpl<$Res>
    implements _$PurchaseConfigCopyWith<$Res> {
  __$PurchaseConfigCopyWithImpl(this._self, this._then);

  final _PurchaseConfig _self;
  final $Res Function(_PurchaseConfig) _then;

/// Create a copy of PurchaseConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxPriceLength = null,Object? maxBuyerNameLength = null,Object? maxMemoLength = null,}) {
  return _then(_PurchaseConfig(
maxPriceLength: null == maxPriceLength ? _self.maxPriceLength : maxPriceLength // ignore: cast_nullable_to_non_nullable
as int,maxBuyerNameLength: null == maxBuyerNameLength ? _self.maxBuyerNameLength : maxBuyerNameLength // ignore: cast_nullable_to_non_nullable
as int,maxMemoLength: null == maxMemoLength ? _self.maxMemoLength : maxMemoLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
