// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_totals_purchases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MonthlyTotalsPurchases {

 List<MonthlyTotals> get monthlyTotals;
/// Create a copy of MonthlyTotalsPurchases
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyTotalsPurchasesCopyWith<MonthlyTotalsPurchases> get copyWith => _$MonthlyTotalsPurchasesCopyWithImpl<MonthlyTotalsPurchases>(this as MonthlyTotalsPurchases, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyTotalsPurchases&&const DeepCollectionEquality().equals(other.monthlyTotals, monthlyTotals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(monthlyTotals));

@override
String toString() {
  return 'MonthlyTotalsPurchases(monthlyTotals: $monthlyTotals)';
}


}

/// @nodoc
abstract mixin class $MonthlyTotalsPurchasesCopyWith<$Res>  {
  factory $MonthlyTotalsPurchasesCopyWith(MonthlyTotalsPurchases value, $Res Function(MonthlyTotalsPurchases) _then) = _$MonthlyTotalsPurchasesCopyWithImpl;
@useResult
$Res call({
 List<MonthlyTotals> monthlyTotals
});




}
/// @nodoc
class _$MonthlyTotalsPurchasesCopyWithImpl<$Res>
    implements $MonthlyTotalsPurchasesCopyWith<$Res> {
  _$MonthlyTotalsPurchasesCopyWithImpl(this._self, this._then);

  final MonthlyTotalsPurchases _self;
  final $Res Function(MonthlyTotalsPurchases) _then;

/// Create a copy of MonthlyTotalsPurchases
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthlyTotals = null,}) {
  return _then(_self.copyWith(
monthlyTotals: null == monthlyTotals ? _self.monthlyTotals : monthlyTotals // ignore: cast_nullable_to_non_nullable
as List<MonthlyTotals>,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyTotalsPurchases].
extension MonthlyTotalsPurchasesPatterns on MonthlyTotalsPurchases {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyTotalsPurchases value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyTotalsPurchases() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyTotalsPurchases value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyTotalsPurchases():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyTotalsPurchases value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyTotalsPurchases() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MonthlyTotals> monthlyTotals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyTotalsPurchases() when $default != null:
return $default(_that.monthlyTotals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MonthlyTotals> monthlyTotals)  $default,) {final _that = this;
switch (_that) {
case _MonthlyTotalsPurchases():
return $default(_that.monthlyTotals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MonthlyTotals> monthlyTotals)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyTotalsPurchases() when $default != null:
return $default(_that.monthlyTotals);case _:
  return null;

}
}

}

/// @nodoc


class _MonthlyTotalsPurchases implements MonthlyTotalsPurchases {
  const _MonthlyTotalsPurchases({required final  List<MonthlyTotals> monthlyTotals}): _monthlyTotals = monthlyTotals;
  

 final  List<MonthlyTotals> _monthlyTotals;
@override List<MonthlyTotals> get monthlyTotals {
  if (_monthlyTotals is EqualUnmodifiableListView) return _monthlyTotals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthlyTotals);
}


/// Create a copy of MonthlyTotalsPurchases
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyTotalsPurchasesCopyWith<_MonthlyTotalsPurchases> get copyWith => __$MonthlyTotalsPurchasesCopyWithImpl<_MonthlyTotalsPurchases>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyTotalsPurchases&&const DeepCollectionEquality().equals(other._monthlyTotals, _monthlyTotals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_monthlyTotals));

@override
String toString() {
  return 'MonthlyTotalsPurchases(monthlyTotals: $monthlyTotals)';
}


}

/// @nodoc
abstract mixin class _$MonthlyTotalsPurchasesCopyWith<$Res> implements $MonthlyTotalsPurchasesCopyWith<$Res> {
  factory _$MonthlyTotalsPurchasesCopyWith(_MonthlyTotalsPurchases value, $Res Function(_MonthlyTotalsPurchases) _then) = __$MonthlyTotalsPurchasesCopyWithImpl;
@override @useResult
$Res call({
 List<MonthlyTotals> monthlyTotals
});




}
/// @nodoc
class __$MonthlyTotalsPurchasesCopyWithImpl<$Res>
    implements _$MonthlyTotalsPurchasesCopyWith<$Res> {
  __$MonthlyTotalsPurchasesCopyWithImpl(this._self, this._then);

  final _MonthlyTotalsPurchases _self;
  final $Res Function(_MonthlyTotalsPurchases) _then;

/// Create a copy of MonthlyTotalsPurchases
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthlyTotals = null,}) {
  return _then(_MonthlyTotalsPurchases(
monthlyTotals: null == monthlyTotals ? _self._monthlyTotals : monthlyTotals // ignore: cast_nullable_to_non_nullable
as List<MonthlyTotals>,
  ));
}


}

// dart format on
