// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_image_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemImageConfig {
  int get minWidth => throw _privateConstructorUsedError;
  int get minHeight => throw _privateConstructorUsedError;
  int get quality => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemImageConfigCopyWith<ItemImageConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemImageConfigCopyWith<$Res> {
  factory $ItemImageConfigCopyWith(
          ItemImageConfig value, $Res Function(ItemImageConfig) then) =
      _$ItemImageConfigCopyWithImpl<$Res, ItemImageConfig>;
  @useResult
  $Res call({int minWidth, int minHeight, int quality});
}

/// @nodoc
class _$ItemImageConfigCopyWithImpl<$Res, $Val extends ItemImageConfig>
    implements $ItemImageConfigCopyWith<$Res> {
  _$ItemImageConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? minHeight = null,
    Object? quality = null,
  }) {
    return _then(_value.copyWith(
      minWidth: null == minWidth
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as int,
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as int,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImageConfigImplCopyWith<$Res>
    implements $ItemImageConfigCopyWith<$Res> {
  factory _$$ItemImageConfigImplCopyWith(_$ItemImageConfigImpl value,
          $Res Function(_$ItemImageConfigImpl) then) =
      __$$ItemImageConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minWidth, int minHeight, int quality});
}

/// @nodoc
class __$$ItemImageConfigImplCopyWithImpl<$Res>
    extends _$ItemImageConfigCopyWithImpl<$Res, _$ItemImageConfigImpl>
    implements _$$ItemImageConfigImplCopyWith<$Res> {
  __$$ItemImageConfigImplCopyWithImpl(
      _$ItemImageConfigImpl _value, $Res Function(_$ItemImageConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? minHeight = null,
    Object? quality = null,
  }) {
    return _then(_$ItemImageConfigImpl(
      minWidth: null == minWidth
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as int,
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as int,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemImageConfigImpl implements _ItemImageConfig {
  const _$ItemImageConfigImpl(
      {required this.minWidth, required this.minHeight, required this.quality});

  @override
  final int minWidth;
  @override
  final int minHeight;
  @override
  final int quality;

  @override
  String toString() {
    return 'ItemImageConfig(minWidth: $minWidth, minHeight: $minHeight, quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImageConfigImpl &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minWidth, minHeight, quality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImageConfigImplCopyWith<_$ItemImageConfigImpl> get copyWith =>
      __$$ItemImageConfigImplCopyWithImpl<_$ItemImageConfigImpl>(
          this, _$identity);
}

abstract class _ItemImageConfig implements ItemImageConfig {
  const factory _ItemImageConfig(
      {required final int minWidth,
      required final int minHeight,
      required final int quality}) = _$ItemImageConfigImpl;

  @override
  int get minWidth;
  @override
  int get minHeight;
  @override
  int get quality;
  @override
  @JsonKey(ignore: true)
  _$$ItemImageConfigImplCopyWith<_$ItemImageConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
