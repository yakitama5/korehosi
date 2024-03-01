// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_array_widget_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormArrayWidgetKeys {
  List<String> get keys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormArrayWidgetKeysCopyWith<FormArrayWidgetKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormArrayWidgetKeysCopyWith<$Res> {
  factory $FormArrayWidgetKeysCopyWith(
          FormArrayWidgetKeys value, $Res Function(FormArrayWidgetKeys) then) =
      _$FormArrayWidgetKeysCopyWithImpl<$Res, FormArrayWidgetKeys>;
  @useResult
  $Res call({List<String> keys});
}

/// @nodoc
class _$FormArrayWidgetKeysCopyWithImpl<$Res, $Val extends FormArrayWidgetKeys>
    implements $FormArrayWidgetKeysCopyWith<$Res> {
  _$FormArrayWidgetKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
  }) {
    return _then(_value.copyWith(
      keys: null == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormArrayWidgetKeysImplCopyWith<$Res>
    implements $FormArrayWidgetKeysCopyWith<$Res> {
  factory _$$FormArrayWidgetKeysImplCopyWith(_$FormArrayWidgetKeysImpl value,
          $Res Function(_$FormArrayWidgetKeysImpl) then) =
      __$$FormArrayWidgetKeysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> keys});
}

/// @nodoc
class __$$FormArrayWidgetKeysImplCopyWithImpl<$Res>
    extends _$FormArrayWidgetKeysCopyWithImpl<$Res, _$FormArrayWidgetKeysImpl>
    implements _$$FormArrayWidgetKeysImplCopyWith<$Res> {
  __$$FormArrayWidgetKeysImplCopyWithImpl(_$FormArrayWidgetKeysImpl _value,
      $Res Function(_$FormArrayWidgetKeysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
  }) {
    return _then(_$FormArrayWidgetKeysImpl(
      null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FormArrayWidgetKeysImpl implements _FormArrayWidgetKeys {
  const _$FormArrayWidgetKeysImpl(final List<String> keys) : _keys = keys;

  final List<String> _keys;
  @override
  List<String> get keys {
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  String toString() {
    return 'FormArrayWidgetKeys(keys: $keys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormArrayWidgetKeysImpl &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormArrayWidgetKeysImplCopyWith<_$FormArrayWidgetKeysImpl> get copyWith =>
      __$$FormArrayWidgetKeysImplCopyWithImpl<_$FormArrayWidgetKeysImpl>(
          this, _$identity);
}

abstract class _FormArrayWidgetKeys implements FormArrayWidgetKeys {
  const factory _FormArrayWidgetKeys(final List<String> keys) =
      _$FormArrayWidgetKeysImpl;

  @override
  List<String> get keys;
  @override
  @JsonKey(ignore: true)
  _$$FormArrayWidgetKeysImplCopyWith<_$FormArrayWidgetKeysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
