// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_month_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$YearMonthRange {

 YearMonth get from; YearMonth get to;
/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearMonthRangeCopyWith<YearMonthRange> get copyWith => _$YearMonthRangeCopyWithImpl<YearMonthRange>(this as YearMonthRange, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearMonthRange&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'YearMonthRange(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $YearMonthRangeCopyWith<$Res>  {
  factory $YearMonthRangeCopyWith(YearMonthRange value, $Res Function(YearMonthRange) _then) = _$YearMonthRangeCopyWithImpl;
@useResult
$Res call({
 YearMonth from, YearMonth to
});


$YearMonthCopyWith<$Res> get from;$YearMonthCopyWith<$Res> get to;

}
/// @nodoc
class _$YearMonthRangeCopyWithImpl<$Res>
    implements $YearMonthRangeCopyWith<$Res> {
  _$YearMonthRangeCopyWithImpl(this._self, this._then);

  final YearMonthRange _self;
  final $Res Function(YearMonthRange) _then;

/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = null,Object? to = null,}) {
  return _then(_self.copyWith(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as YearMonth,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as YearMonth,
  ));
}
/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearMonthCopyWith<$Res> get from {
  
  return $YearMonthCopyWith<$Res>(_self.from, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearMonthCopyWith<$Res> get to {
  
  return $YearMonthCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}


/// Adds pattern-matching-related methods to [YearMonthRange].
extension YearMonthRangePatterns on YearMonthRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YearMonthRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YearMonthRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YearMonthRange value)  $default,){
final _that = this;
switch (_that) {
case _YearMonthRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YearMonthRange value)?  $default,){
final _that = this;
switch (_that) {
case _YearMonthRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( YearMonth from,  YearMonth to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YearMonthRange() when $default != null:
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( YearMonth from,  YearMonth to)  $default,) {final _that = this;
switch (_that) {
case _YearMonthRange():
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( YearMonth from,  YearMonth to)?  $default,) {final _that = this;
switch (_that) {
case _YearMonthRange() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc


class _YearMonthRange extends YearMonthRange {
   _YearMonthRange({required this.from, required this.to}): assert(from.compareTo(to) <= 0),super._();
  

@override final  YearMonth from;
@override final  YearMonth to;

/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearMonthRangeCopyWith<_YearMonthRange> get copyWith => __$YearMonthRangeCopyWithImpl<_YearMonthRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearMonthRange&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'YearMonthRange(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$YearMonthRangeCopyWith<$Res> implements $YearMonthRangeCopyWith<$Res> {
  factory _$YearMonthRangeCopyWith(_YearMonthRange value, $Res Function(_YearMonthRange) _then) = __$YearMonthRangeCopyWithImpl;
@override @useResult
$Res call({
 YearMonth from, YearMonth to
});


@override $YearMonthCopyWith<$Res> get from;@override $YearMonthCopyWith<$Res> get to;

}
/// @nodoc
class __$YearMonthRangeCopyWithImpl<$Res>
    implements _$YearMonthRangeCopyWith<$Res> {
  __$YearMonthRangeCopyWithImpl(this._self, this._then);

  final _YearMonthRange _self;
  final $Res Function(_YearMonthRange) _then;

/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,}) {
  return _then(_YearMonthRange(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as YearMonth,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as YearMonth,
  ));
}

/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearMonthCopyWith<$Res> get from {
  
  return $YearMonthCopyWith<$Res>(_self.from, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of YearMonthRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YearMonthCopyWith<$Res> get to {
  
  return $YearMonthCopyWith<$Res>(_self.to, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}

// dart format on
