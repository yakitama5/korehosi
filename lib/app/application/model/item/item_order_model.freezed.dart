// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemOrderModel {
  ItemOrderKey get key => throw _privateConstructorUsedError;
  SortOrder get sortOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemOrderModelCopyWith<ItemOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemOrderModelCopyWith<$Res> {
  factory $ItemOrderModelCopyWith(
          ItemOrderModel value, $Res Function(ItemOrderModel) then) =
      _$ItemOrderModelCopyWithImpl<$Res, ItemOrderModel>;
  @useResult
  $Res call({ItemOrderKey key, SortOrder sortOrder});
}

/// @nodoc
class _$ItemOrderModelCopyWithImpl<$Res, $Val extends ItemOrderModel>
    implements $ItemOrderModelCopyWith<$Res> {
  _$ItemOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? sortOrder = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ItemOrderKey,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemOrderModelImplCopyWith<$Res>
    implements $ItemOrderModelCopyWith<$Res> {
  factory _$$ItemOrderModelImplCopyWith(_$ItemOrderModelImpl value,
          $Res Function(_$ItemOrderModelImpl) then) =
      __$$ItemOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemOrderKey key, SortOrder sortOrder});
}

/// @nodoc
class __$$ItemOrderModelImplCopyWithImpl<$Res>
    extends _$ItemOrderModelCopyWithImpl<$Res, _$ItemOrderModelImpl>
    implements _$$ItemOrderModelImplCopyWith<$Res> {
  __$$ItemOrderModelImplCopyWithImpl(
      _$ItemOrderModelImpl _value, $Res Function(_$ItemOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? sortOrder = null,
  }) {
    return _then(_$ItemOrderModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ItemOrderKey,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$ItemOrderModelImpl extends _ItemOrderModel {
  const _$ItemOrderModelImpl({required this.key, required this.sortOrder})
      : super._();

  @override
  final ItemOrderKey key;
  @override
  final SortOrder sortOrder;

  @override
  String toString() {
    return 'ItemOrderModel(key: $key, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemOrderModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemOrderModelImplCopyWith<_$ItemOrderModelImpl> get copyWith =>
      __$$ItemOrderModelImplCopyWithImpl<_$ItemOrderModelImpl>(
          this, _$identity);
}

abstract class _ItemOrderModel extends ItemOrderModel {
  const factory _ItemOrderModel(
      {required final ItemOrderKey key,
      required final SortOrder sortOrder}) = _$ItemOrderModelImpl;
  const _ItemOrderModel._() : super._();

  @override
  ItemOrderKey get key;
  @override
  SortOrder get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$ItemOrderModelImplCopyWith<_$ItemOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
