// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'svg_replace_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SvgReplaceColors {
  Color get rawColor => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  /// Create a copy of SvgReplaceColors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SvgReplaceColorsCopyWith<SvgReplaceColors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SvgReplaceColorsCopyWith<$Res> {
  factory $SvgReplaceColorsCopyWith(
    SvgReplaceColors value,
    $Res Function(SvgReplaceColors) then,
  ) = _$SvgReplaceColorsCopyWithImpl<$Res, SvgReplaceColors>;
  @useResult
  $Res call({Color rawColor, Color color});
}

/// @nodoc
class _$SvgReplaceColorsCopyWithImpl<$Res, $Val extends SvgReplaceColors>
    implements $SvgReplaceColorsCopyWith<$Res> {
  _$SvgReplaceColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SvgReplaceColors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawColor = null, Object? color = null}) {
    return _then(
      _value.copyWith(
            rawColor:
                null == rawColor
                    ? _value.rawColor
                    : rawColor // ignore: cast_nullable_to_non_nullable
                        as Color,
            color:
                null == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SvgReplaceColorsImplCopyWith<$Res>
    implements $SvgReplaceColorsCopyWith<$Res> {
  factory _$$SvgReplaceColorsImplCopyWith(
    _$SvgReplaceColorsImpl value,
    $Res Function(_$SvgReplaceColorsImpl) then,
  ) = __$$SvgReplaceColorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color rawColor, Color color});
}

/// @nodoc
class __$$SvgReplaceColorsImplCopyWithImpl<$Res>
    extends _$SvgReplaceColorsCopyWithImpl<$Res, _$SvgReplaceColorsImpl>
    implements _$$SvgReplaceColorsImplCopyWith<$Res> {
  __$$SvgReplaceColorsImplCopyWithImpl(
    _$SvgReplaceColorsImpl _value,
    $Res Function(_$SvgReplaceColorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SvgReplaceColors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawColor = null, Object? color = null}) {
    return _then(
      _$SvgReplaceColorsImpl(
        rawColor:
            null == rawColor
                ? _value.rawColor
                : rawColor // ignore: cast_nullable_to_non_nullable
                    as Color,
        color:
            null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as Color,
      ),
    );
  }
}

/// @nodoc

class _$SvgReplaceColorsImpl implements _SvgReplaceColors {
  const _$SvgReplaceColorsImpl({required this.rawColor, required this.color});

  @override
  final Color rawColor;
  @override
  final Color color;

  @override
  String toString() {
    return 'SvgReplaceColors(rawColor: $rawColor, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SvgReplaceColorsImpl &&
            (identical(other.rawColor, rawColor) ||
                other.rawColor == rawColor) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawColor, color);

  /// Create a copy of SvgReplaceColors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SvgReplaceColorsImplCopyWith<_$SvgReplaceColorsImpl> get copyWith =>
      __$$SvgReplaceColorsImplCopyWithImpl<_$SvgReplaceColorsImpl>(
        this,
        _$identity,
      );
}

abstract class _SvgReplaceColors implements SvgReplaceColors {
  const factory _SvgReplaceColors({
    required final Color rawColor,
    required final Color color,
  }) = _$SvgReplaceColorsImpl;

  @override
  Color get rawColor;
  @override
  Color get color;

  /// Create a copy of SvgReplaceColors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SvgReplaceColorsImplCopyWith<_$SvgReplaceColorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
