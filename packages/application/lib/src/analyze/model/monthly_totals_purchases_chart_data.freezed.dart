// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_totals_purchases_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MonthlyTotalsPurchasesChartData {

 MonthlyTotalsPurchases get monthlyTotalsPurchases; List<FlSpot> get spots;
/// Create a copy of MonthlyTotalsPurchasesChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyTotalsPurchasesChartDataCopyWith<MonthlyTotalsPurchasesChartData> get copyWith => _$MonthlyTotalsPurchasesChartDataCopyWithImpl<MonthlyTotalsPurchasesChartData>(this as MonthlyTotalsPurchasesChartData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyTotalsPurchasesChartData&&(identical(other.monthlyTotalsPurchases, monthlyTotalsPurchases) || other.monthlyTotalsPurchases == monthlyTotalsPurchases)&&const DeepCollectionEquality().equals(other.spots, spots));
}


@override
int get hashCode => Object.hash(runtimeType,monthlyTotalsPurchases,const DeepCollectionEquality().hash(spots));

@override
String toString() {
  return 'MonthlyTotalsPurchasesChartData(monthlyTotalsPurchases: $monthlyTotalsPurchases, spots: $spots)';
}


}

/// @nodoc
abstract mixin class $MonthlyTotalsPurchasesChartDataCopyWith<$Res>  {
  factory $MonthlyTotalsPurchasesChartDataCopyWith(MonthlyTotalsPurchasesChartData value, $Res Function(MonthlyTotalsPurchasesChartData) _then) = _$MonthlyTotalsPurchasesChartDataCopyWithImpl;
@useResult
$Res call({
 MonthlyTotalsPurchases monthlyTotalsPurchases, List<FlSpot> spots
});


$MonthlyTotalsPurchasesCopyWith<$Res> get monthlyTotalsPurchases;

}
/// @nodoc
class _$MonthlyTotalsPurchasesChartDataCopyWithImpl<$Res>
    implements $MonthlyTotalsPurchasesChartDataCopyWith<$Res> {
  _$MonthlyTotalsPurchasesChartDataCopyWithImpl(this._self, this._then);

  final MonthlyTotalsPurchasesChartData _self;
  final $Res Function(MonthlyTotalsPurchasesChartData) _then;

/// Create a copy of MonthlyTotalsPurchasesChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthlyTotalsPurchases = null,Object? spots = null,}) {
  return _then(_self.copyWith(
monthlyTotalsPurchases: null == monthlyTotalsPurchases ? _self.monthlyTotalsPurchases : monthlyTotalsPurchases // ignore: cast_nullable_to_non_nullable
as MonthlyTotalsPurchases,spots: null == spots ? _self.spots : spots // ignore: cast_nullable_to_non_nullable
as List<FlSpot>,
  ));
}
/// Create a copy of MonthlyTotalsPurchasesChartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyTotalsPurchasesCopyWith<$Res> get monthlyTotalsPurchases {
  
  return $MonthlyTotalsPurchasesCopyWith<$Res>(_self.monthlyTotalsPurchases, (value) {
    return _then(_self.copyWith(monthlyTotalsPurchases: value));
  });
}
}


/// Adds pattern-matching-related methods to [MonthlyTotalsPurchasesChartData].
extension MonthlyTotalsPurchasesChartDataPatterns on MonthlyTotalsPurchasesChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyTotalsPurchasesChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyTotalsPurchasesChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyTotalsPurchasesChartData value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyTotalsPurchasesChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyTotalsPurchasesChartData value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyTotalsPurchasesChartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MonthlyTotalsPurchases monthlyTotalsPurchases,  List<FlSpot> spots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyTotalsPurchasesChartData() when $default != null:
return $default(_that.monthlyTotalsPurchases,_that.spots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MonthlyTotalsPurchases monthlyTotalsPurchases,  List<FlSpot> spots)  $default,) {final _that = this;
switch (_that) {
case _MonthlyTotalsPurchasesChartData():
return $default(_that.monthlyTotalsPurchases,_that.spots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MonthlyTotalsPurchases monthlyTotalsPurchases,  List<FlSpot> spots)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyTotalsPurchasesChartData() when $default != null:
return $default(_that.monthlyTotalsPurchases,_that.spots);case _:
  return null;

}
}

}

/// @nodoc


class _MonthlyTotalsPurchasesChartData implements MonthlyTotalsPurchasesChartData {
  const _MonthlyTotalsPurchasesChartData({required this.monthlyTotalsPurchases, required final  List<FlSpot> spots}): _spots = spots;
  

@override final  MonthlyTotalsPurchases monthlyTotalsPurchases;
 final  List<FlSpot> _spots;
@override List<FlSpot> get spots {
  if (_spots is EqualUnmodifiableListView) return _spots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spots);
}


/// Create a copy of MonthlyTotalsPurchasesChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyTotalsPurchasesChartDataCopyWith<_MonthlyTotalsPurchasesChartData> get copyWith => __$MonthlyTotalsPurchasesChartDataCopyWithImpl<_MonthlyTotalsPurchasesChartData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyTotalsPurchasesChartData&&(identical(other.monthlyTotalsPurchases, monthlyTotalsPurchases) || other.monthlyTotalsPurchases == monthlyTotalsPurchases)&&const DeepCollectionEquality().equals(other._spots, _spots));
}


@override
int get hashCode => Object.hash(runtimeType,monthlyTotalsPurchases,const DeepCollectionEquality().hash(_spots));

@override
String toString() {
  return 'MonthlyTotalsPurchasesChartData(monthlyTotalsPurchases: $monthlyTotalsPurchases, spots: $spots)';
}


}

/// @nodoc
abstract mixin class _$MonthlyTotalsPurchasesChartDataCopyWith<$Res> implements $MonthlyTotalsPurchasesChartDataCopyWith<$Res> {
  factory _$MonthlyTotalsPurchasesChartDataCopyWith(_MonthlyTotalsPurchasesChartData value, $Res Function(_MonthlyTotalsPurchasesChartData) _then) = __$MonthlyTotalsPurchasesChartDataCopyWithImpl;
@override @useResult
$Res call({
 MonthlyTotalsPurchases monthlyTotalsPurchases, List<FlSpot> spots
});


@override $MonthlyTotalsPurchasesCopyWith<$Res> get monthlyTotalsPurchases;

}
/// @nodoc
class __$MonthlyTotalsPurchasesChartDataCopyWithImpl<$Res>
    implements _$MonthlyTotalsPurchasesChartDataCopyWith<$Res> {
  __$MonthlyTotalsPurchasesChartDataCopyWithImpl(this._self, this._then);

  final _MonthlyTotalsPurchasesChartData _self;
  final $Res Function(_MonthlyTotalsPurchasesChartData) _then;

/// Create a copy of MonthlyTotalsPurchasesChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthlyTotalsPurchases = null,Object? spots = null,}) {
  return _then(_MonthlyTotalsPurchasesChartData(
monthlyTotalsPurchases: null == monthlyTotalsPurchases ? _self.monthlyTotalsPurchases : monthlyTotalsPurchases // ignore: cast_nullable_to_non_nullable
as MonthlyTotalsPurchases,spots: null == spots ? _self._spots : spots // ignore: cast_nullable_to_non_nullable
as List<FlSpot>,
  ));
}

/// Create a copy of MonthlyTotalsPurchasesChartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyTotalsPurchasesCopyWith<$Res> get monthlyTotalsPurchases {
  
  return $MonthlyTotalsPurchasesCopyWith<$Res>(_self.monthlyTotalsPurchases, (value) {
    return _then(_self.copyWith(monthlyTotalsPurchases: value));
  });
}
}

// dart format on
