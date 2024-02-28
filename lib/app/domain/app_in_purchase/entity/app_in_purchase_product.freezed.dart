// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_in_purchase_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInPurchaseProduct {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInPurchaseProductCopyWith<AppInPurchaseProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInPurchaseProductCopyWith<$Res> {
  factory $AppInPurchaseProductCopyWith(AppInPurchaseProduct value,
          $Res Function(AppInPurchaseProduct) then) =
      _$AppInPurchaseProductCopyWithImpl<$Res, AppInPurchaseProduct>;
  @useResult
  $Res call({String id, String title, double price});
}

/// @nodoc
class _$AppInPurchaseProductCopyWithImpl<$Res,
        $Val extends AppInPurchaseProduct>
    implements $AppInPurchaseProductCopyWith<$Res> {
  _$AppInPurchaseProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInPurchaseProductImplCopyWith<$Res>
    implements $AppInPurchaseProductCopyWith<$Res> {
  factory _$$AppInPurchaseProductImplCopyWith(_$AppInPurchaseProductImpl value,
          $Res Function(_$AppInPurchaseProductImpl) then) =
      __$$AppInPurchaseProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, double price});
}

/// @nodoc
class __$$AppInPurchaseProductImplCopyWithImpl<$Res>
    extends _$AppInPurchaseProductCopyWithImpl<$Res, _$AppInPurchaseProductImpl>
    implements _$$AppInPurchaseProductImplCopyWith<$Res> {
  __$$AppInPurchaseProductImplCopyWithImpl(_$AppInPurchaseProductImpl _value,
      $Res Function(_$AppInPurchaseProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
  }) {
    return _then(_$AppInPurchaseProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AppInPurchaseProductImpl implements _AppInPurchaseProduct {
  const _$AppInPurchaseProductImpl(
      {required this.id, required this.title, required this.price});

  @override
  final String id;
  @override
  final String title;
  @override
  final double price;

  @override
  String toString() {
    return 'AppInPurchaseProduct(id: $id, title: $title, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInPurchaseProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInPurchaseProductImplCopyWith<_$AppInPurchaseProductImpl>
      get copyWith =>
          __$$AppInPurchaseProductImplCopyWithImpl<_$AppInPurchaseProductImpl>(
              this, _$identity);
}

abstract class _AppInPurchaseProduct implements AppInPurchaseProduct {
  const factory _AppInPurchaseProduct(
      {required final String id,
      required final String title,
      required final double price}) = _$AppInPurchaseProductImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$AppInPurchaseProductImplCopyWith<_$AppInPurchaseProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}
