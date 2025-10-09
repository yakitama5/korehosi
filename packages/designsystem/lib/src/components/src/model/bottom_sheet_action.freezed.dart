// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_sheet_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BottomSheetAction<T> {

 Widget get title; Widget? get icon; T get value;
/// Create a copy of BottomSheetAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomSheetActionCopyWith<T, BottomSheetAction<T>> get copyWith => _$BottomSheetActionCopyWithImpl<T, BottomSheetAction<T>>(this as BottomSheetAction<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomSheetAction<T>&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,title,icon,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'BottomSheetAction<$T>(title: $title, icon: $icon, value: $value)';
}


}

/// @nodoc
abstract mixin class $BottomSheetActionCopyWith<T,$Res>  {
  factory $BottomSheetActionCopyWith(BottomSheetAction<T> value, $Res Function(BottomSheetAction<T>) _then) = _$BottomSheetActionCopyWithImpl;
@useResult
$Res call({
 Widget title, Widget? icon, T value
});




}
/// @nodoc
class _$BottomSheetActionCopyWithImpl<T,$Res>
    implements $BottomSheetActionCopyWith<T, $Res> {
  _$BottomSheetActionCopyWithImpl(this._self, this._then);

  final BottomSheetAction<T> _self;
  final $Res Function(BottomSheetAction<T>) _then;

/// Create a copy of BottomSheetAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? icon = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Widget,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [BottomSheetAction].
extension BottomSheetActionPatterns<T> on BottomSheetAction<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BottomSheetAction<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BottomSheetAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BottomSheetAction<T> value)  $default,){
final _that = this;
switch (_that) {
case _BottomSheetAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BottomSheetAction<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BottomSheetAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Widget title,  Widget? icon,  T value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BottomSheetAction() when $default != null:
return $default(_that.title,_that.icon,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Widget title,  Widget? icon,  T value)  $default,) {final _that = this;
switch (_that) {
case _BottomSheetAction():
return $default(_that.title,_that.icon,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Widget title,  Widget? icon,  T value)?  $default,) {final _that = this;
switch (_that) {
case _BottomSheetAction() when $default != null:
return $default(_that.title,_that.icon,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _BottomSheetAction<T> implements BottomSheetAction<T> {
  const _BottomSheetAction({required this.title, this.icon, required this.value});
  

@override final  Widget title;
@override final  Widget? icon;
@override final  T value;

/// Create a copy of BottomSheetAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BottomSheetActionCopyWith<T, _BottomSheetAction<T>> get copyWith => __$BottomSheetActionCopyWithImpl<T, _BottomSheetAction<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BottomSheetAction<T>&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,title,icon,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'BottomSheetAction<$T>(title: $title, icon: $icon, value: $value)';
}


}

/// @nodoc
abstract mixin class _$BottomSheetActionCopyWith<T,$Res> implements $BottomSheetActionCopyWith<T, $Res> {
  factory _$BottomSheetActionCopyWith(_BottomSheetAction<T> value, $Res Function(_BottomSheetAction<T>) _then) = __$BottomSheetActionCopyWithImpl;
@override @useResult
$Res call({
 Widget title, Widget? icon, T value
});




}
/// @nodoc
class __$BottomSheetActionCopyWithImpl<T,$Res>
    implements _$BottomSheetActionCopyWith<T, $Res> {
  __$BottomSheetActionCopyWithImpl(this._self, this._then);

  final _BottomSheetAction<T> _self;
  final $Res Function(_BottomSheetAction<T>) _then;

/// Create a copy of BottomSheetAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? icon = freezed,Object? value = freezed,}) {
  return _then(_BottomSheetAction<T>(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Widget,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
