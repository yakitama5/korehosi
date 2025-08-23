// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JoinGroupRequest {
  String get shareLinkId;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JoinGroupRequestCopyWith<JoinGroupRequest> get copyWith =>
      _$JoinGroupRequestCopyWithImpl<JoinGroupRequest>(
          this as JoinGroupRequest, _$identity);

  /// Serializes this JoinGroupRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JoinGroupRequest &&
            (identical(other.shareLinkId, shareLinkId) ||
                other.shareLinkId == shareLinkId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shareLinkId);

  @override
  String toString() {
    return 'JoinGroupRequest(shareLinkId: $shareLinkId)';
  }
}

/// @nodoc
abstract mixin class $JoinGroupRequestCopyWith<$Res> {
  factory $JoinGroupRequestCopyWith(
          JoinGroupRequest value, $Res Function(JoinGroupRequest) _then) =
      _$JoinGroupRequestCopyWithImpl;
  @useResult
  $Res call({String shareLinkId});
}

/// @nodoc
class _$JoinGroupRequestCopyWithImpl<$Res>
    implements $JoinGroupRequestCopyWith<$Res> {
  _$JoinGroupRequestCopyWithImpl(this._self, this._then);

  final JoinGroupRequest _self;
  final $Res Function(JoinGroupRequest) _then;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareLinkId = null,
  }) {
    return _then(_self.copyWith(
      shareLinkId: null == shareLinkId
          ? _self.shareLinkId
          : shareLinkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [JoinGroupRequest].
extension JoinGroupRequestPatterns on JoinGroupRequest {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JoinGroupRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JoinGroupRequest() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_JoinGroupRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinGroupRequest():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_JoinGroupRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinGroupRequest() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String shareLinkId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JoinGroupRequest() when $default != null:
        return $default(_that.shareLinkId);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String shareLinkId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinGroupRequest():
        return $default(_that.shareLinkId);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String shareLinkId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinGroupRequest() when $default != null:
        return $default(_that.shareLinkId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JoinGroupRequest implements JoinGroupRequest {
  const _JoinGroupRequest({required this.shareLinkId});
  factory _JoinGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinGroupRequestFromJson(json);

  @override
  final String shareLinkId;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JoinGroupRequestCopyWith<_JoinGroupRequest> get copyWith =>
      __$JoinGroupRequestCopyWithImpl<_JoinGroupRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JoinGroupRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinGroupRequest &&
            (identical(other.shareLinkId, shareLinkId) ||
                other.shareLinkId == shareLinkId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shareLinkId);

  @override
  String toString() {
    return 'JoinGroupRequest(shareLinkId: $shareLinkId)';
  }
}

/// @nodoc
abstract mixin class _$JoinGroupRequestCopyWith<$Res>
    implements $JoinGroupRequestCopyWith<$Res> {
  factory _$JoinGroupRequestCopyWith(
          _JoinGroupRequest value, $Res Function(_JoinGroupRequest) _then) =
      __$JoinGroupRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String shareLinkId});
}

/// @nodoc
class __$JoinGroupRequestCopyWithImpl<$Res>
    implements _$JoinGroupRequestCopyWith<$Res> {
  __$JoinGroupRequestCopyWithImpl(this._self, this._then);

  final _JoinGroupRequest _self;
  final $Res Function(_JoinGroupRequest) _then;

  /// Create a copy of JoinGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? shareLinkId = null,
  }) {
    return _then(_JoinGroupRequest(
      shareLinkId: null == shareLinkId
          ? _self.shareLinkId
          : shareLinkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
