// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemImage {

 ImageId get id; String get url;
/// Create a copy of ItemImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemImageCopyWith<ItemImage> get copyWith => _$ItemImageCopyWithImpl<ItemImage>(this as ItemImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemImage&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,id,url);

@override
String toString() {
  return 'ItemImage(id: $id, url: $url)';
}


}

/// @nodoc
abstract mixin class $ItemImageCopyWith<$Res>  {
  factory $ItemImageCopyWith(ItemImage value, $Res Function(ItemImage) _then) = _$ItemImageCopyWithImpl;
@useResult
$Res call({
 ImageId id, String url
});




}
/// @nodoc
class _$ItemImageCopyWithImpl<$Res>
    implements $ItemImageCopyWith<$Res> {
  _$ItemImageCopyWithImpl(this._self, this._then);

  final ItemImage _self;
  final $Res Function(ItemImage) _then;

/// Create a copy of ItemImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ImageId,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemImage].
extension ItemImagePatterns on ItemImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemImage value)  $default,){
final _that = this;
switch (_that) {
case _ItemImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemImage value)?  $default,){
final _that = this;
switch (_that) {
case _ItemImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ImageId id,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemImage() when $default != null:
return $default(_that.id,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ImageId id,  String url)  $default,) {final _that = this;
switch (_that) {
case _ItemImage():
return $default(_that.id,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ImageId id,  String url)?  $default,) {final _that = this;
switch (_that) {
case _ItemImage() when $default != null:
return $default(_that.id,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class _ItemImage implements ItemImage {
  const _ItemImage({required this.id, required this.url});
  

@override final  ImageId id;
@override final  String url;

/// Create a copy of ItemImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemImageCopyWith<_ItemImage> get copyWith => __$ItemImageCopyWithImpl<_ItemImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemImage&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,id,url);

@override
String toString() {
  return 'ItemImage(id: $id, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ItemImageCopyWith<$Res> implements $ItemImageCopyWith<$Res> {
  factory _$ItemImageCopyWith(_ItemImage value, $Res Function(_ItemImage) _then) = __$ItemImageCopyWithImpl;
@override @useResult
$Res call({
 ImageId id, String url
});




}
/// @nodoc
class __$ItemImageCopyWithImpl<$Res>
    implements _$ItemImageCopyWith<$Res> {
  __$ItemImageCopyWithImpl(this._self, this._then);

  final _ItemImage _self;
  final $Res Function(_ItemImage) _then;

/// Create a copy of ItemImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,}) {
  return _then(_ItemImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ImageId,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
