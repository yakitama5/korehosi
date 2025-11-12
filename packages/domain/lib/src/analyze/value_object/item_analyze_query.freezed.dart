// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_analyze_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemAnalyzeQuery {

 String? get wanterName; String? get buyerName;
/// Create a copy of ItemAnalyzeQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemAnalyzeQueryCopyWith<ItemAnalyzeQuery> get copyWith => _$ItemAnalyzeQueryCopyWithImpl<ItemAnalyzeQuery>(this as ItemAnalyzeQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemAnalyzeQuery&&(identical(other.wanterName, wanterName) || other.wanterName == wanterName)&&(identical(other.buyerName, buyerName) || other.buyerName == buyerName));
}


@override
int get hashCode => Object.hash(runtimeType,wanterName,buyerName);

@override
String toString() {
  return 'ItemAnalyzeQuery(wanterName: $wanterName, buyerName: $buyerName)';
}


}

/// @nodoc
abstract mixin class $ItemAnalyzeQueryCopyWith<$Res>  {
  factory $ItemAnalyzeQueryCopyWith(ItemAnalyzeQuery value, $Res Function(ItemAnalyzeQuery) _then) = _$ItemAnalyzeQueryCopyWithImpl;
@useResult
$Res call({
 String? wanterName, String? buyerName
});




}
/// @nodoc
class _$ItemAnalyzeQueryCopyWithImpl<$Res>
    implements $ItemAnalyzeQueryCopyWith<$Res> {
  _$ItemAnalyzeQueryCopyWithImpl(this._self, this._then);

  final ItemAnalyzeQuery _self;
  final $Res Function(ItemAnalyzeQuery) _then;

/// Create a copy of ItemAnalyzeQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wanterName = freezed,Object? buyerName = freezed,}) {
  return _then(_self.copyWith(
wanterName: freezed == wanterName ? _self.wanterName : wanterName // ignore: cast_nullable_to_non_nullable
as String?,buyerName: freezed == buyerName ? _self.buyerName : buyerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemAnalyzeQuery].
extension ItemAnalyzeQueryPatterns on ItemAnalyzeQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemAnalyzeQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemAnalyzeQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemAnalyzeQuery value)  $default,){
final _that = this;
switch (_that) {
case _ItemAnalyzeQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemAnalyzeQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ItemAnalyzeQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? wanterName,  String? buyerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemAnalyzeQuery() when $default != null:
return $default(_that.wanterName,_that.buyerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? wanterName,  String? buyerName)  $default,) {final _that = this;
switch (_that) {
case _ItemAnalyzeQuery():
return $default(_that.wanterName,_that.buyerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? wanterName,  String? buyerName)?  $default,) {final _that = this;
switch (_that) {
case _ItemAnalyzeQuery() when $default != null:
return $default(_that.wanterName,_that.buyerName);case _:
  return null;

}
}

}

/// @nodoc


class _ItemAnalyzeQuery implements ItemAnalyzeQuery {
  const _ItemAnalyzeQuery({this.wanterName, this.buyerName});
  

@override final  String? wanterName;
@override final  String? buyerName;

/// Create a copy of ItemAnalyzeQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemAnalyzeQueryCopyWith<_ItemAnalyzeQuery> get copyWith => __$ItemAnalyzeQueryCopyWithImpl<_ItemAnalyzeQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemAnalyzeQuery&&(identical(other.wanterName, wanterName) || other.wanterName == wanterName)&&(identical(other.buyerName, buyerName) || other.buyerName == buyerName));
}


@override
int get hashCode => Object.hash(runtimeType,wanterName,buyerName);

@override
String toString() {
  return 'ItemAnalyzeQuery(wanterName: $wanterName, buyerName: $buyerName)';
}


}

/// @nodoc
abstract mixin class _$ItemAnalyzeQueryCopyWith<$Res> implements $ItemAnalyzeQueryCopyWith<$Res> {
  factory _$ItemAnalyzeQueryCopyWith(_ItemAnalyzeQuery value, $Res Function(_ItemAnalyzeQuery) _then) = __$ItemAnalyzeQueryCopyWithImpl;
@override @useResult
$Res call({
 String? wanterName, String? buyerName
});




}
/// @nodoc
class __$ItemAnalyzeQueryCopyWithImpl<$Res>
    implements _$ItemAnalyzeQueryCopyWith<$Res> {
  __$ItemAnalyzeQueryCopyWithImpl(this._self, this._then);

  final _ItemAnalyzeQuery _self;
  final $Res Function(_ItemAnalyzeQuery) _then;

/// Create a copy of ItemAnalyzeQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wanterName = freezed,Object? buyerName = freezed,}) {
  return _then(_ItemAnalyzeQuery(
wanterName: freezed == wanterName ? _self.wanterName : wanterName // ignore: cast_nullable_to_non_nullable
as String?,buyerName: freezed == buyerName ? _self.buyerName : buyerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
