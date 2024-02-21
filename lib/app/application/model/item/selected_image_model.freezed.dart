// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedImageModel {
  String? get imagePath => throw _privateConstructorUsedError;
  XFile? get uploadFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedImageModelCopyWith<SelectedImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedImageModelCopyWith<$Res> {
  factory $SelectedImageModelCopyWith(
          SelectedImageModel value, $Res Function(SelectedImageModel) then) =
      _$SelectedImageModelCopyWithImpl<$Res, SelectedImageModel>;
  @useResult
  $Res call({String? imagePath, XFile? uploadFile});
}

/// @nodoc
class _$SelectedImageModelCopyWithImpl<$Res, $Val extends SelectedImageModel>
    implements $SelectedImageModelCopyWith<$Res> {
  _$SelectedImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? uploadFile = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedImageModelImplCopyWith<$Res>
    implements $SelectedImageModelCopyWith<$Res> {
  factory _$$SelectedImageModelImplCopyWith(_$SelectedImageModelImpl value,
          $Res Function(_$SelectedImageModelImpl) then) =
      __$$SelectedImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imagePath, XFile? uploadFile});
}

/// @nodoc
class __$$SelectedImageModelImplCopyWithImpl<$Res>
    extends _$SelectedImageModelCopyWithImpl<$Res, _$SelectedImageModelImpl>
    implements _$$SelectedImageModelImplCopyWith<$Res> {
  __$$SelectedImageModelImplCopyWithImpl(_$SelectedImageModelImpl _value,
      $Res Function(_$SelectedImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? uploadFile = freezed,
  }) {
    return _then(_$SelectedImageModelImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$SelectedImageModelImpl implements _SelectedImageModel {
  const _$SelectedImageModelImpl({this.imagePath, this.uploadFile})
      : assert(imagePath != null || uploadFile != null);

  @override
  final String? imagePath;
  @override
  final XFile? uploadFile;

  @override
  String toString() {
    return 'SelectedImageModel(imagePath: $imagePath, uploadFile: $uploadFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImageModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, uploadFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImageModelImplCopyWith<_$SelectedImageModelImpl> get copyWith =>
      __$$SelectedImageModelImplCopyWithImpl<_$SelectedImageModelImpl>(
          this, _$identity);
}

abstract class _SelectedImageModel implements SelectedImageModel {
  const factory _SelectedImageModel(
      {final String? imagePath,
      final XFile? uploadFile}) = _$SelectedImageModelImpl;

  @override
  String? get imagePath;
  @override
  XFile? get uploadFile;
  @override
  @JsonKey(ignore: true)
  _$$SelectedImageModelImplCopyWith<_$SelectedImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
