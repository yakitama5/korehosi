// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupConfig {
  bool get initialPremium => throw _privateConstructorUsedError;
  int get initialItemCount => throw _privateConstructorUsedError;
  int get validDays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupConfigCopyWith<GroupConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupConfigCopyWith<$Res> {
  factory $GroupConfigCopyWith(
          GroupConfig value, $Res Function(GroupConfig) then) =
      _$GroupConfigCopyWithImpl<$Res, GroupConfig>;
  @useResult
  $Res call({bool initialPremium, int initialItemCount, int validDays});
}

/// @nodoc
class _$GroupConfigCopyWithImpl<$Res, $Val extends GroupConfig>
    implements $GroupConfigCopyWith<$Res> {
  _$GroupConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPremium = null,
    Object? initialItemCount = null,
    Object? validDays = null,
  }) {
    return _then(_value.copyWith(
      initialPremium: null == initialPremium
          ? _value.initialPremium
          : initialPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      initialItemCount: null == initialItemCount
          ? _value.initialItemCount
          : initialItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      validDays: null == validDays
          ? _value.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupConfigImplCopyWith<$Res>
    implements $GroupConfigCopyWith<$Res> {
  factory _$$GroupConfigImplCopyWith(
          _$GroupConfigImpl value, $Res Function(_$GroupConfigImpl) then) =
      __$$GroupConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool initialPremium, int initialItemCount, int validDays});
}

/// @nodoc
class __$$GroupConfigImplCopyWithImpl<$Res>
    extends _$GroupConfigCopyWithImpl<$Res, _$GroupConfigImpl>
    implements _$$GroupConfigImplCopyWith<$Res> {
  __$$GroupConfigImplCopyWithImpl(
      _$GroupConfigImpl _value, $Res Function(_$GroupConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPremium = null,
    Object? initialItemCount = null,
    Object? validDays = null,
  }) {
    return _then(_$GroupConfigImpl(
      initialPremium: null == initialPremium
          ? _value.initialPremium
          : initialPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      initialItemCount: null == initialItemCount
          ? _value.initialItemCount
          : initialItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      validDays: null == validDays
          ? _value.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupConfigImpl implements _GroupConfig {
  const _$GroupConfigImpl(
      {required this.initialPremium,
      required this.initialItemCount,
      required this.validDays});

  @override
  final bool initialPremium;
  @override
  final int initialItemCount;
  @override
  final int validDays;

  @override
  String toString() {
    return 'GroupConfig(initialPremium: $initialPremium, initialItemCount: $initialItemCount, validDays: $validDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupConfigImpl &&
            (identical(other.initialPremium, initialPremium) ||
                other.initialPremium == initialPremium) &&
            (identical(other.initialItemCount, initialItemCount) ||
                other.initialItemCount == initialItemCount) &&
            (identical(other.validDays, validDays) ||
                other.validDays == validDays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initialPremium, initialItemCount, validDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupConfigImplCopyWith<_$GroupConfigImpl> get copyWith =>
      __$$GroupConfigImplCopyWithImpl<_$GroupConfigImpl>(this, _$identity);
}

abstract class _GroupConfig implements GroupConfig {
  const factory _GroupConfig(
      {required final bool initialPremium,
      required final int initialItemCount,
      required final int validDays}) = _$GroupConfigImpl;

  @override
  bool get initialPremium;
  @override
  int get initialItemCount;
  @override
  int get validDays;
  @override
  @JsonKey(ignore: true)
  _$$GroupConfigImplCopyWith<_$GroupConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
