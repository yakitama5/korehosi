// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupTile {
  Group get group => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  bool get current => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupTileCopyWith<GroupTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupTileCopyWith<$Res> {
  factory $GroupTileCopyWith(GroupTile value, $Res Function(GroupTile) then) =
      _$GroupTileCopyWithImpl<$Res, GroupTile>;
  @useResult
  $Res call({Group group, String? ownerName, bool isOwner, bool current});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class _$GroupTileCopyWithImpl<$Res, $Val extends GroupTile>
    implements $GroupTileCopyWith<$Res> {
  _$GroupTileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? ownerName = freezed,
    Object? isOwner = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupTileImplCopyWith<$Res>
    implements $GroupTileCopyWith<$Res> {
  factory _$$GroupTileImplCopyWith(
          _$GroupTileImpl value, $Res Function(_$GroupTileImpl) then) =
      __$$GroupTileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Group group, String? ownerName, bool isOwner, bool current});

  @override
  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupTileImplCopyWithImpl<$Res>
    extends _$GroupTileCopyWithImpl<$Res, _$GroupTileImpl>
    implements _$$GroupTileImplCopyWith<$Res> {
  __$$GroupTileImplCopyWithImpl(
      _$GroupTileImpl _value, $Res Function(_$GroupTileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? ownerName = freezed,
    Object? isOwner = null,
    Object? current = null,
  }) {
    return _then(_$GroupTileImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GroupTileImpl implements _GroupTile {
  const _$GroupTileImpl(
      {required this.group,
      this.ownerName,
      required this.isOwner,
      required this.current});

  @override
  final Group group;
  @override
  final String? ownerName;
  @override
  final bool isOwner;
  @override
  final bool current;

  @override
  String toString() {
    return 'GroupTile(group: $group, ownerName: $ownerName, isOwner: $isOwner, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupTileImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, group, ownerName, isOwner, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupTileImplCopyWith<_$GroupTileImpl> get copyWith =>
      __$$GroupTileImplCopyWithImpl<_$GroupTileImpl>(this, _$identity);
}

abstract class _GroupTile implements GroupTile {
  const factory _GroupTile(
      {required final Group group,
      final String? ownerName,
      required final bool isOwner,
      required final bool current}) = _$GroupTileImpl;

  @override
  Group get group;
  @override
  String? get ownerName;
  @override
  bool get isOwner;
  @override
  bool get current;
  @override
  @JsonKey(ignore: true)
  _$$GroupTileImplCopyWith<_$GroupTileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
