// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$YearMonth {

 int get year; int get month;
/// Create a copy of YearMonth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearMonthCopyWith<YearMonth> get copyWith => _$YearMonthCopyWithImpl<YearMonth>(this as YearMonth, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearMonth&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'YearMonth(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $YearMonthCopyWith<$Res>  {
  factory $YearMonthCopyWith(YearMonth value, $Res Function(YearMonth) _then) = _$YearMonthCopyWithImpl;
@useResult
$Res call({
 int year, int month
});




}
/// @nodoc
class _$YearMonthCopyWithImpl<$Res>
    implements $YearMonthCopyWith<$Res> {
  _$YearMonthCopyWithImpl(this._self, this._then);

  final YearMonth _self;
  final $Res Function(YearMonth) _then;

/// Create a copy of YearMonth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? month = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [YearMonth].
extension YearMonthPatterns on YearMonth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YearMonth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YearMonth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YearMonth value)  $default,){
final _that = this;
switch (_that) {
case _YearMonth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YearMonth value)?  $default,){
final _that = this;
switch (_that) {
case _YearMonth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  int month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YearMonth() when $default != null:
return $default(_that.year,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  int month)  $default,) {final _that = this;
switch (_that) {
case _YearMonth():
return $default(_that.year,_that.month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  int month)?  $default,) {final _that = this;
switch (_that) {
case _YearMonth() when $default != null:
return $default(_that.year,_that.month);case _:
  return null;

}
}

}

/// @nodoc


class _YearMonth extends YearMonth {
  const _YearMonth({required this.year, required this.month}): assert(year >= 1990),assert(month >= 1 && month <= 12),super._();
  

@override final  int year;
@override final  int month;

/// Create a copy of YearMonth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearMonthCopyWith<_YearMonth> get copyWith => __$YearMonthCopyWithImpl<_YearMonth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearMonth&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'YearMonth(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class _$YearMonthCopyWith<$Res> implements $YearMonthCopyWith<$Res> {
  factory _$YearMonthCopyWith(_YearMonth value, $Res Function(_YearMonth) _then) = __$YearMonthCopyWithImpl;
@override @useResult
$Res call({
 int year, int month
});




}
/// @nodoc
class __$YearMonthCopyWithImpl<$Res>
    implements _$YearMonthCopyWith<$Res> {
  __$YearMonthCopyWithImpl(this._self, this._then);

  final _YearMonth _self;
  final $Res Function(_YearMonth) _then;

/// Create a copy of YearMonth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,}) {
  return _then(_YearMonth(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
