// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'functions_join_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FunctionsJoinGroupResponse {

 String? get errorCode;
/// Create a copy of FunctionsJoinGroupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FunctionsJoinGroupResponseCopyWith<FunctionsJoinGroupResponse> get copyWith => _$FunctionsJoinGroupResponseCopyWithImpl<FunctionsJoinGroupResponse>(this as FunctionsJoinGroupResponse, _$identity);

  /// Serializes this FunctionsJoinGroupResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FunctionsJoinGroupResponse&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorCode);

@override
String toString() {
  return 'FunctionsJoinGroupResponse(errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class $FunctionsJoinGroupResponseCopyWith<$Res>  {
  factory $FunctionsJoinGroupResponseCopyWith(FunctionsJoinGroupResponse value, $Res Function(FunctionsJoinGroupResponse) _then) = _$FunctionsJoinGroupResponseCopyWithImpl;
@useResult
$Res call({
 String? errorCode
});




}
/// @nodoc
class _$FunctionsJoinGroupResponseCopyWithImpl<$Res>
    implements $FunctionsJoinGroupResponseCopyWith<$Res> {
  _$FunctionsJoinGroupResponseCopyWithImpl(this._self, this._then);

  final FunctionsJoinGroupResponse _self;
  final $Res Function(FunctionsJoinGroupResponse) _then;

/// Create a copy of FunctionsJoinGroupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorCode = freezed,}) {
  return _then(_self.copyWith(
errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FunctionsJoinGroupResponse].
extension FunctionsJoinGroupResponsePatterns on FunctionsJoinGroupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FunctionsJoinGroupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FunctionsJoinGroupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FunctionsJoinGroupResponse value)  $default,){
final _that = this;
switch (_that) {
case _FunctionsJoinGroupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FunctionsJoinGroupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FunctionsJoinGroupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? errorCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FunctionsJoinGroupResponse() when $default != null:
return $default(_that.errorCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? errorCode)  $default,) {final _that = this;
switch (_that) {
case _FunctionsJoinGroupResponse():
return $default(_that.errorCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? errorCode)?  $default,) {final _that = this;
switch (_that) {
case _FunctionsJoinGroupResponse() when $default != null:
return $default(_that.errorCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FunctionsJoinGroupResponse implements FunctionsJoinGroupResponse {
  const _FunctionsJoinGroupResponse({this.errorCode});
  factory _FunctionsJoinGroupResponse.fromJson(Map<String, dynamic> json) => _$FunctionsJoinGroupResponseFromJson(json);

@override final  String? errorCode;

/// Create a copy of FunctionsJoinGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FunctionsJoinGroupResponseCopyWith<_FunctionsJoinGroupResponse> get copyWith => __$FunctionsJoinGroupResponseCopyWithImpl<_FunctionsJoinGroupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FunctionsJoinGroupResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FunctionsJoinGroupResponse&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorCode);

@override
String toString() {
  return 'FunctionsJoinGroupResponse(errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class _$FunctionsJoinGroupResponseCopyWith<$Res> implements $FunctionsJoinGroupResponseCopyWith<$Res> {
  factory _$FunctionsJoinGroupResponseCopyWith(_FunctionsJoinGroupResponse value, $Res Function(_FunctionsJoinGroupResponse) _then) = __$FunctionsJoinGroupResponseCopyWithImpl;
@override @useResult
$Res call({
 String? errorCode
});




}
/// @nodoc
class __$FunctionsJoinGroupResponseCopyWithImpl<$Res>
    implements _$FunctionsJoinGroupResponseCopyWith<$Res> {
  __$FunctionsJoinGroupResponseCopyWithImpl(this._self, this._then);

  final _FunctionsJoinGroupResponse _self;
  final $Res Function(_FunctionsJoinGroupResponse) _then;

/// Create a copy of FunctionsJoinGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorCode = freezed,}) {
  return _then(_FunctionsJoinGroupResponse(
errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
