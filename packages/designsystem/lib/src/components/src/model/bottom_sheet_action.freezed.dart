// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_sheet_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BottomSheetAction<T> {
  Widget get title => throw _privateConstructorUsedError;
  Widget? get icon => throw _privateConstructorUsedError;
  T get value => throw _privateConstructorUsedError;

  /// Create a copy of BottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomSheetActionCopyWith<T, BottomSheetAction<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetActionCopyWith<T, $Res> {
  factory $BottomSheetActionCopyWith(
    BottomSheetAction<T> value,
    $Res Function(BottomSheetAction<T>) then,
  ) = _$BottomSheetActionCopyWithImpl<T, $Res, BottomSheetAction<T>>;
  @useResult
  $Res call({Widget title, Widget? icon, T value});
}

/// @nodoc
class _$BottomSheetActionCopyWithImpl<
  T,
  $Res,
  $Val extends BottomSheetAction<T>
>
    implements $BottomSheetActionCopyWith<T, $Res> {
  _$BottomSheetActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
    Object? value = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as Widget,
            icon:
                freezed == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as Widget?,
            value:
                freezed == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as T,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BottomSheetActionImplCopyWith<T, $Res>
    implements $BottomSheetActionCopyWith<T, $Res> {
  factory _$$BottomSheetActionImplCopyWith(
    _$BottomSheetActionImpl<T> value,
    $Res Function(_$BottomSheetActionImpl<T>) then,
  ) = __$$BottomSheetActionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Widget title, Widget? icon, T value});
}

/// @nodoc
class __$$BottomSheetActionImplCopyWithImpl<T, $Res>
    extends _$BottomSheetActionCopyWithImpl<T, $Res, _$BottomSheetActionImpl<T>>
    implements _$$BottomSheetActionImplCopyWith<T, $Res> {
  __$$BottomSheetActionImplCopyWithImpl(
    _$BottomSheetActionImpl<T> _value,
    $Res Function(_$BottomSheetActionImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of BottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
    Object? value = freezed,
  }) {
    return _then(
      _$BottomSheetActionImpl<T>(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as Widget,
        icon:
            freezed == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as Widget?,
        value:
            freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as T,
      ),
    );
  }
}

/// @nodoc

class _$BottomSheetActionImpl<T> implements _BottomSheetAction<T> {
  const _$BottomSheetActionImpl({
    required this.title,
    this.icon,
    required this.value,
  });

  @override
  final Widget title;
  @override
  final Widget? icon;
  @override
  final T value;

  @override
  String toString() {
    return 'BottomSheetAction<$T>(title: $title, icon: $icon, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomSheetActionImpl<T> &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    icon,
    const DeepCollectionEquality().hash(value),
  );

  /// Create a copy of BottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomSheetActionImplCopyWith<T, _$BottomSheetActionImpl<T>>
  get copyWith =>
      __$$BottomSheetActionImplCopyWithImpl<T, _$BottomSheetActionImpl<T>>(
        this,
        _$identity,
      );
}

abstract class _BottomSheetAction<T> implements BottomSheetAction<T> {
  const factory _BottomSheetAction({
    required final Widget title,
    final Widget? icon,
    required final T value,
  }) = _$BottomSheetActionImpl<T>;

  @override
  Widget get title;
  @override
  Widget? get icon;
  @override
  T get value;

  /// Create a copy of BottomSheetAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomSheetActionImplCopyWith<T, _$BottomSheetActionImpl<T>>
  get copyWith => throw _privateConstructorUsedError;
}
