// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemConfig {

 int get maxNameLength; int get maxWanterNameLength; int get maxWishSeasonLength; int get maxUrlLength; int get maxMemoLength; int get limitItemCount;
/// Create a copy of ItemConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemConfigCopyWith<ItemConfig> get copyWith => _$ItemConfigCopyWithImpl<ItemConfig>(this as ItemConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemConfig&&(identical(other.maxNameLength, maxNameLength) || other.maxNameLength == maxNameLength)&&(identical(other.maxWanterNameLength, maxWanterNameLength) || other.maxWanterNameLength == maxWanterNameLength)&&(identical(other.maxWishSeasonLength, maxWishSeasonLength) || other.maxWishSeasonLength == maxWishSeasonLength)&&(identical(other.maxUrlLength, maxUrlLength) || other.maxUrlLength == maxUrlLength)&&(identical(other.maxMemoLength, maxMemoLength) || other.maxMemoLength == maxMemoLength)&&(identical(other.limitItemCount, limitItemCount) || other.limitItemCount == limitItemCount));
}


@override
int get hashCode => Object.hash(runtimeType,maxNameLength,maxWanterNameLength,maxWishSeasonLength,maxUrlLength,maxMemoLength,limitItemCount);

@override
String toString() {
  return 'ItemConfig(maxNameLength: $maxNameLength, maxWanterNameLength: $maxWanterNameLength, maxWishSeasonLength: $maxWishSeasonLength, maxUrlLength: $maxUrlLength, maxMemoLength: $maxMemoLength, limitItemCount: $limitItemCount)';
}


}

/// @nodoc
abstract mixin class $ItemConfigCopyWith<$Res>  {
  factory $ItemConfigCopyWith(ItemConfig value, $Res Function(ItemConfig) _then) = _$ItemConfigCopyWithImpl;
@useResult
$Res call({
 int maxNameLength, int maxWanterNameLength, int maxWishSeasonLength, int maxUrlLength, int maxMemoLength, int limitItemCount
});




}
/// @nodoc
class _$ItemConfigCopyWithImpl<$Res>
    implements $ItemConfigCopyWith<$Res> {
  _$ItemConfigCopyWithImpl(this._self, this._then);

  final ItemConfig _self;
  final $Res Function(ItemConfig) _then;

/// Create a copy of ItemConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxNameLength = null,Object? maxWanterNameLength = null,Object? maxWishSeasonLength = null,Object? maxUrlLength = null,Object? maxMemoLength = null,Object? limitItemCount = null,}) {
  return _then(_self.copyWith(
maxNameLength: null == maxNameLength ? _self.maxNameLength : maxNameLength // ignore: cast_nullable_to_non_nullable
as int,maxWanterNameLength: null == maxWanterNameLength ? _self.maxWanterNameLength : maxWanterNameLength // ignore: cast_nullable_to_non_nullable
as int,maxWishSeasonLength: null == maxWishSeasonLength ? _self.maxWishSeasonLength : maxWishSeasonLength // ignore: cast_nullable_to_non_nullable
as int,maxUrlLength: null == maxUrlLength ? _self.maxUrlLength : maxUrlLength // ignore: cast_nullable_to_non_nullable
as int,maxMemoLength: null == maxMemoLength ? _self.maxMemoLength : maxMemoLength // ignore: cast_nullable_to_non_nullable
as int,limitItemCount: null == limitItemCount ? _self.limitItemCount : limitItemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemConfig].
extension ItemConfigPatterns on ItemConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemConfig value)  $default,){
final _that = this;
switch (_that) {
case _ItemConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ItemConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxNameLength,  int maxWanterNameLength,  int maxWishSeasonLength,  int maxUrlLength,  int maxMemoLength,  int limitItemCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemConfig() when $default != null:
return $default(_that.maxNameLength,_that.maxWanterNameLength,_that.maxWishSeasonLength,_that.maxUrlLength,_that.maxMemoLength,_that.limitItemCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxNameLength,  int maxWanterNameLength,  int maxWishSeasonLength,  int maxUrlLength,  int maxMemoLength,  int limitItemCount)  $default,) {final _that = this;
switch (_that) {
case _ItemConfig():
return $default(_that.maxNameLength,_that.maxWanterNameLength,_that.maxWishSeasonLength,_that.maxUrlLength,_that.maxMemoLength,_that.limitItemCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxNameLength,  int maxWanterNameLength,  int maxWishSeasonLength,  int maxUrlLength,  int maxMemoLength,  int limitItemCount)?  $default,) {final _that = this;
switch (_that) {
case _ItemConfig() when $default != null:
return $default(_that.maxNameLength,_that.maxWanterNameLength,_that.maxWishSeasonLength,_that.maxUrlLength,_that.maxMemoLength,_that.limitItemCount);case _:
  return null;

}
}

}

/// @nodoc


class _ItemConfig implements ItemConfig {
  const _ItemConfig({required this.maxNameLength, required this.maxWanterNameLength, required this.maxWishSeasonLength, required this.maxUrlLength, required this.maxMemoLength, required this.limitItemCount});
  

@override final  int maxNameLength;
@override final  int maxWanterNameLength;
@override final  int maxWishSeasonLength;
@override final  int maxUrlLength;
@override final  int maxMemoLength;
@override final  int limitItemCount;

/// Create a copy of ItemConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemConfigCopyWith<_ItemConfig> get copyWith => __$ItemConfigCopyWithImpl<_ItemConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemConfig&&(identical(other.maxNameLength, maxNameLength) || other.maxNameLength == maxNameLength)&&(identical(other.maxWanterNameLength, maxWanterNameLength) || other.maxWanterNameLength == maxWanterNameLength)&&(identical(other.maxWishSeasonLength, maxWishSeasonLength) || other.maxWishSeasonLength == maxWishSeasonLength)&&(identical(other.maxUrlLength, maxUrlLength) || other.maxUrlLength == maxUrlLength)&&(identical(other.maxMemoLength, maxMemoLength) || other.maxMemoLength == maxMemoLength)&&(identical(other.limitItemCount, limitItemCount) || other.limitItemCount == limitItemCount));
}


@override
int get hashCode => Object.hash(runtimeType,maxNameLength,maxWanterNameLength,maxWishSeasonLength,maxUrlLength,maxMemoLength,limitItemCount);

@override
String toString() {
  return 'ItemConfig(maxNameLength: $maxNameLength, maxWanterNameLength: $maxWanterNameLength, maxWishSeasonLength: $maxWishSeasonLength, maxUrlLength: $maxUrlLength, maxMemoLength: $maxMemoLength, limitItemCount: $limitItemCount)';
}


}

/// @nodoc
abstract mixin class _$ItemConfigCopyWith<$Res> implements $ItemConfigCopyWith<$Res> {
  factory _$ItemConfigCopyWith(_ItemConfig value, $Res Function(_ItemConfig) _then) = __$ItemConfigCopyWithImpl;
@override @useResult
$Res call({
 int maxNameLength, int maxWanterNameLength, int maxWishSeasonLength, int maxUrlLength, int maxMemoLength, int limitItemCount
});




}
/// @nodoc
class __$ItemConfigCopyWithImpl<$Res>
    implements _$ItemConfigCopyWith<$Res> {
  __$ItemConfigCopyWithImpl(this._self, this._then);

  final _ItemConfig _self;
  final $Res Function(_ItemConfig) _then;

/// Create a copy of ItemConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxNameLength = null,Object? maxWanterNameLength = null,Object? maxWishSeasonLength = null,Object? maxUrlLength = null,Object? maxMemoLength = null,Object? limitItemCount = null,}) {
  return _then(_ItemConfig(
maxNameLength: null == maxNameLength ? _self.maxNameLength : maxNameLength // ignore: cast_nullable_to_non_nullable
as int,maxWanterNameLength: null == maxWanterNameLength ? _self.maxWanterNameLength : maxWanterNameLength // ignore: cast_nullable_to_non_nullable
as int,maxWishSeasonLength: null == maxWishSeasonLength ? _self.maxWishSeasonLength : maxWishSeasonLength // ignore: cast_nullable_to_non_nullable
as int,maxUrlLength: null == maxUrlLength ? _self.maxUrlLength : maxUrlLength // ignore: cast_nullable_to_non_nullable
as int,maxMemoLength: null == maxMemoLength ? _self.maxMemoLength : maxMemoLength // ignore: cast_nullable_to_non_nullable
as int,limitItemCount: null == limitItemCount ? _self.limitItemCount : limitItemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
