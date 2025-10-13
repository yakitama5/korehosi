// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'svg_replace_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SvgReplaceColors {

 Color get rawColor; Color get color;
/// Create a copy of SvgReplaceColors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SvgReplaceColorsCopyWith<SvgReplaceColors> get copyWith => _$SvgReplaceColorsCopyWithImpl<SvgReplaceColors>(this as SvgReplaceColors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SvgReplaceColors&&(identical(other.rawColor, rawColor) || other.rawColor == rawColor)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,rawColor,color);

@override
String toString() {
  return 'SvgReplaceColors(rawColor: $rawColor, color: $color)';
}


}

/// @nodoc
abstract mixin class $SvgReplaceColorsCopyWith<$Res>  {
  factory $SvgReplaceColorsCopyWith(SvgReplaceColors value, $Res Function(SvgReplaceColors) _then) = _$SvgReplaceColorsCopyWithImpl;
@useResult
$Res call({
 Color rawColor, Color color
});




}
/// @nodoc
class _$SvgReplaceColorsCopyWithImpl<$Res>
    implements $SvgReplaceColorsCopyWith<$Res> {
  _$SvgReplaceColorsCopyWithImpl(this._self, this._then);

  final SvgReplaceColors _self;
  final $Res Function(SvgReplaceColors) _then;

/// Create a copy of SvgReplaceColors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawColor = null,Object? color = null,}) {
  return _then(_self.copyWith(
rawColor: null == rawColor ? _self.rawColor : rawColor // ignore: cast_nullable_to_non_nullable
as Color,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [SvgReplaceColors].
extension SvgReplaceColorsPatterns on SvgReplaceColors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SvgReplaceColors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SvgReplaceColors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SvgReplaceColors value)  $default,){
final _that = this;
switch (_that) {
case _SvgReplaceColors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SvgReplaceColors value)?  $default,){
final _that = this;
switch (_that) {
case _SvgReplaceColors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Color rawColor,  Color color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SvgReplaceColors() when $default != null:
return $default(_that.rawColor,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Color rawColor,  Color color)  $default,) {final _that = this;
switch (_that) {
case _SvgReplaceColors():
return $default(_that.rawColor,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Color rawColor,  Color color)?  $default,) {final _that = this;
switch (_that) {
case _SvgReplaceColors() when $default != null:
return $default(_that.rawColor,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _SvgReplaceColors implements SvgReplaceColors {
  const _SvgReplaceColors({required this.rawColor, required this.color});
  

@override final  Color rawColor;
@override final  Color color;

/// Create a copy of SvgReplaceColors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SvgReplaceColorsCopyWith<_SvgReplaceColors> get copyWith => __$SvgReplaceColorsCopyWithImpl<_SvgReplaceColors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SvgReplaceColors&&(identical(other.rawColor, rawColor) || other.rawColor == rawColor)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,rawColor,color);

@override
String toString() {
  return 'SvgReplaceColors(rawColor: $rawColor, color: $color)';
}


}

/// @nodoc
abstract mixin class _$SvgReplaceColorsCopyWith<$Res> implements $SvgReplaceColorsCopyWith<$Res> {
  factory _$SvgReplaceColorsCopyWith(_SvgReplaceColors value, $Res Function(_SvgReplaceColors) _then) = __$SvgReplaceColorsCopyWithImpl;
@override @useResult
$Res call({
 Color rawColor, Color color
});




}
/// @nodoc
class __$SvgReplaceColorsCopyWithImpl<$Res>
    implements _$SvgReplaceColorsCopyWith<$Res> {
  __$SvgReplaceColorsCopyWithImpl(this._self, this._then);

  final _SvgReplaceColors _self;
  final $Res Function(_SvgReplaceColors) _then;

/// Create a copy of SvgReplaceColors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rawColor = null,Object? color = null,}) {
  return _then(_SvgReplaceColors(
rawColor: null == rawColor ? _self.rawColor : rawColor // ignore: cast_nullable_to_non_nullable
as Color,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
