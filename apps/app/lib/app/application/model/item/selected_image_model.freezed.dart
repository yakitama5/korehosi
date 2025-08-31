// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectedImageModel {

 String? get imagePath; XFile? get uploadFile;
/// Create a copy of SelectedImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedImageModelCopyWith<SelectedImageModel> get copyWith => _$SelectedImageModelCopyWithImpl<SelectedImageModel>(this as SelectedImageModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedImageModel&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.uploadFile, uploadFile) || other.uploadFile == uploadFile));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,uploadFile);

@override
String toString() {
  return 'SelectedImageModel(imagePath: $imagePath, uploadFile: $uploadFile)';
}


}

/// @nodoc
abstract mixin class $SelectedImageModelCopyWith<$Res>  {
  factory $SelectedImageModelCopyWith(SelectedImageModel value, $Res Function(SelectedImageModel) _then) = _$SelectedImageModelCopyWithImpl;
@useResult
$Res call({
 String? imagePath, XFile? uploadFile
});




}
/// @nodoc
class _$SelectedImageModelCopyWithImpl<$Res>
    implements $SelectedImageModelCopyWith<$Res> {
  _$SelectedImageModelCopyWithImpl(this._self, this._then);

  final SelectedImageModel _self;
  final $Res Function(SelectedImageModel) _then;

/// Create a copy of SelectedImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = freezed,Object? uploadFile = freezed,}) {
  return _then(_self.copyWith(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,uploadFile: freezed == uploadFile ? _self.uploadFile : uploadFile // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectedImageModel].
extension SelectedImageModelPatterns on SelectedImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectedImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectedImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectedImageModel value)  $default,){
final _that = this;
switch (_that) {
case _SelectedImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectedImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _SelectedImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imagePath,  XFile? uploadFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectedImageModel() when $default != null:
return $default(_that.imagePath,_that.uploadFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imagePath,  XFile? uploadFile)  $default,) {final _that = this;
switch (_that) {
case _SelectedImageModel():
return $default(_that.imagePath,_that.uploadFile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imagePath,  XFile? uploadFile)?  $default,) {final _that = this;
switch (_that) {
case _SelectedImageModel() when $default != null:
return $default(_that.imagePath,_that.uploadFile);case _:
  return null;

}
}

}

/// @nodoc


class _SelectedImageModel implements SelectedImageModel {
  const _SelectedImageModel({this.imagePath, this.uploadFile}): assert(imagePath != null || uploadFile != null);
  

@override final  String? imagePath;
@override final  XFile? uploadFile;

/// Create a copy of SelectedImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedImageModelCopyWith<_SelectedImageModel> get copyWith => __$SelectedImageModelCopyWithImpl<_SelectedImageModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedImageModel&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.uploadFile, uploadFile) || other.uploadFile == uploadFile));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,uploadFile);

@override
String toString() {
  return 'SelectedImageModel(imagePath: $imagePath, uploadFile: $uploadFile)';
}


}

/// @nodoc
abstract mixin class _$SelectedImageModelCopyWith<$Res> implements $SelectedImageModelCopyWith<$Res> {
  factory _$SelectedImageModelCopyWith(_SelectedImageModel value, $Res Function(_SelectedImageModel) _then) = __$SelectedImageModelCopyWithImpl;
@override @useResult
$Res call({
 String? imagePath, XFile? uploadFile
});




}
/// @nodoc
class __$SelectedImageModelCopyWithImpl<$Res>
    implements _$SelectedImageModelCopyWith<$Res> {
  __$SelectedImageModelCopyWithImpl(this._self, this._then);

  final _SelectedImageModel _self;
  final $Res Function(_SelectedImageModel) _then;

/// Create a copy of SelectedImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,Object? uploadFile = freezed,}) {
  return _then(_SelectedImageModel(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,uploadFile: freezed == uploadFile ? _self.uploadFile : uploadFile // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

// dart format on
