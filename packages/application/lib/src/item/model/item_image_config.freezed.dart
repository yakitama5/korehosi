// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_image_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemImageConfig {

 int get minWidth; int get minHeight; int get quality;
/// Create a copy of ItemImageConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemImageConfigCopyWith<ItemImageConfig> get copyWith => _$ItemImageConfigCopyWithImpl<ItemImageConfig>(this as ItemImageConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemImageConfig&&(identical(other.minWidth, minWidth) || other.minWidth == minWidth)&&(identical(other.minHeight, minHeight) || other.minHeight == minHeight)&&(identical(other.quality, quality) || other.quality == quality));
}


@override
int get hashCode => Object.hash(runtimeType,minWidth,minHeight,quality);

@override
String toString() {
  return 'ItemImageConfig(minWidth: $minWidth, minHeight: $minHeight, quality: $quality)';
}


}

/// @nodoc
abstract mixin class $ItemImageConfigCopyWith<$Res>  {
  factory $ItemImageConfigCopyWith(ItemImageConfig value, $Res Function(ItemImageConfig) _then) = _$ItemImageConfigCopyWithImpl;
@useResult
$Res call({
 int minWidth, int minHeight, int quality
});




}
/// @nodoc
class _$ItemImageConfigCopyWithImpl<$Res>
    implements $ItemImageConfigCopyWith<$Res> {
  _$ItemImageConfigCopyWithImpl(this._self, this._then);

  final ItemImageConfig _self;
  final $Res Function(ItemImageConfig) _then;

/// Create a copy of ItemImageConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minWidth = null,Object? minHeight = null,Object? quality = null,}) {
  return _then(_self.copyWith(
minWidth: null == minWidth ? _self.minWidth : minWidth // ignore: cast_nullable_to_non_nullable
as int,minHeight: null == minHeight ? _self.minHeight : minHeight // ignore: cast_nullable_to_non_nullable
as int,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemImageConfig].
extension ItemImageConfigPatterns on ItemImageConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemImageConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemImageConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemImageConfig value)  $default,){
final _that = this;
switch (_that) {
case _ItemImageConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemImageConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ItemImageConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minWidth,  int minHeight,  int quality)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemImageConfig() when $default != null:
return $default(_that.minWidth,_that.minHeight,_that.quality);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minWidth,  int minHeight,  int quality)  $default,) {final _that = this;
switch (_that) {
case _ItemImageConfig():
return $default(_that.minWidth,_that.minHeight,_that.quality);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minWidth,  int minHeight,  int quality)?  $default,) {final _that = this;
switch (_that) {
case _ItemImageConfig() when $default != null:
return $default(_that.minWidth,_that.minHeight,_that.quality);case _:
  return null;

}
}

}

/// @nodoc


class _ItemImageConfig implements ItemImageConfig {
  const _ItemImageConfig({required this.minWidth, required this.minHeight, required this.quality});
  

@override final  int minWidth;
@override final  int minHeight;
@override final  int quality;

/// Create a copy of ItemImageConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemImageConfigCopyWith<_ItemImageConfig> get copyWith => __$ItemImageConfigCopyWithImpl<_ItemImageConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemImageConfig&&(identical(other.minWidth, minWidth) || other.minWidth == minWidth)&&(identical(other.minHeight, minHeight) || other.minHeight == minHeight)&&(identical(other.quality, quality) || other.quality == quality));
}


@override
int get hashCode => Object.hash(runtimeType,minWidth,minHeight,quality);

@override
String toString() {
  return 'ItemImageConfig(minWidth: $minWidth, minHeight: $minHeight, quality: $quality)';
}


}

/// @nodoc
abstract mixin class _$ItemImageConfigCopyWith<$Res> implements $ItemImageConfigCopyWith<$Res> {
  factory _$ItemImageConfigCopyWith(_ItemImageConfig value, $Res Function(_ItemImageConfig) _then) = __$ItemImageConfigCopyWithImpl;
@override @useResult
$Res call({
 int minWidth, int minHeight, int quality
});




}
/// @nodoc
class __$ItemImageConfigCopyWithImpl<$Res>
    implements _$ItemImageConfigCopyWith<$Res> {
  __$ItemImageConfigCopyWithImpl(this._self, this._then);

  final _ItemImageConfig _self;
  final $Res Function(_ItemImageConfig) _then;

/// Create a copy of ItemImageConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minWidth = null,Object? minHeight = null,Object? quality = null,}) {
  return _then(_ItemImageConfig(
minWidth: null == minWidth ? _self.minWidth : minWidth // ignore: cast_nullable_to_non_nullable
as int,minHeight: null == minHeight ? _self.minHeight : minHeight // ignore: cast_nullable_to_non_nullable
as int,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
