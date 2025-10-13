// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupConfig {

 bool get initialPremium; int get initialItemCount; int get validDays;
/// Create a copy of GroupConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupConfigCopyWith<GroupConfig> get copyWith => _$GroupConfigCopyWithImpl<GroupConfig>(this as GroupConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupConfig&&(identical(other.initialPremium, initialPremium) || other.initialPremium == initialPremium)&&(identical(other.initialItemCount, initialItemCount) || other.initialItemCount == initialItemCount)&&(identical(other.validDays, validDays) || other.validDays == validDays));
}


@override
int get hashCode => Object.hash(runtimeType,initialPremium,initialItemCount,validDays);

@override
String toString() {
  return 'GroupConfig(initialPremium: $initialPremium, initialItemCount: $initialItemCount, validDays: $validDays)';
}


}

/// @nodoc
abstract mixin class $GroupConfigCopyWith<$Res>  {
  factory $GroupConfigCopyWith(GroupConfig value, $Res Function(GroupConfig) _then) = _$GroupConfigCopyWithImpl;
@useResult
$Res call({
 bool initialPremium, int initialItemCount, int validDays
});




}
/// @nodoc
class _$GroupConfigCopyWithImpl<$Res>
    implements $GroupConfigCopyWith<$Res> {
  _$GroupConfigCopyWithImpl(this._self, this._then);

  final GroupConfig _self;
  final $Res Function(GroupConfig) _then;

/// Create a copy of GroupConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialPremium = null,Object? initialItemCount = null,Object? validDays = null,}) {
  return _then(_self.copyWith(
initialPremium: null == initialPremium ? _self.initialPremium : initialPremium // ignore: cast_nullable_to_non_nullable
as bool,initialItemCount: null == initialItemCount ? _self.initialItemCount : initialItemCount // ignore: cast_nullable_to_non_nullable
as int,validDays: null == validDays ? _self.validDays : validDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupConfig].
extension GroupConfigPatterns on GroupConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupConfig value)  $default,){
final _that = this;
switch (_that) {
case _GroupConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupConfig value)?  $default,){
final _that = this;
switch (_that) {
case _GroupConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool initialPremium,  int initialItemCount,  int validDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupConfig() when $default != null:
return $default(_that.initialPremium,_that.initialItemCount,_that.validDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool initialPremium,  int initialItemCount,  int validDays)  $default,) {final _that = this;
switch (_that) {
case _GroupConfig():
return $default(_that.initialPremium,_that.initialItemCount,_that.validDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool initialPremium,  int initialItemCount,  int validDays)?  $default,) {final _that = this;
switch (_that) {
case _GroupConfig() when $default != null:
return $default(_that.initialPremium,_that.initialItemCount,_that.validDays);case _:
  return null;

}
}

}

/// @nodoc


class _GroupConfig implements GroupConfig {
  const _GroupConfig({required this.initialPremium, required this.initialItemCount, required this.validDays});
  

@override final  bool initialPremium;
@override final  int initialItemCount;
@override final  int validDays;

/// Create a copy of GroupConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupConfigCopyWith<_GroupConfig> get copyWith => __$GroupConfigCopyWithImpl<_GroupConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupConfig&&(identical(other.initialPremium, initialPremium) || other.initialPremium == initialPremium)&&(identical(other.initialItemCount, initialItemCount) || other.initialItemCount == initialItemCount)&&(identical(other.validDays, validDays) || other.validDays == validDays));
}


@override
int get hashCode => Object.hash(runtimeType,initialPremium,initialItemCount,validDays);

@override
String toString() {
  return 'GroupConfig(initialPremium: $initialPremium, initialItemCount: $initialItemCount, validDays: $validDays)';
}


}

/// @nodoc
abstract mixin class _$GroupConfigCopyWith<$Res> implements $GroupConfigCopyWith<$Res> {
  factory _$GroupConfigCopyWith(_GroupConfig value, $Res Function(_GroupConfig) _then) = __$GroupConfigCopyWithImpl;
@override @useResult
$Res call({
 bool initialPremium, int initialItemCount, int validDays
});




}
/// @nodoc
class __$GroupConfigCopyWithImpl<$Res>
    implements _$GroupConfigCopyWith<$Res> {
  __$GroupConfigCopyWithImpl(this._self, this._then);

  final _GroupConfig _self;
  final $Res Function(_GroupConfig) _then;

/// Create a copy of GroupConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialPremium = null,Object? initialItemCount = null,Object? validDays = null,}) {
  return _then(_GroupConfig(
initialPremium: null == initialPremium ? _self.initialPremium : initialPremium // ignore: cast_nullable_to_non_nullable
as bool,initialItemCount: null == initialItemCount ? _self.initialItemCount : initialItemCount // ignore: cast_nullable_to_non_nullable
as int,validDays: null == validDays ? _self.validDays : validDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
