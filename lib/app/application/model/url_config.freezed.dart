// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UrlConfig {
  String get contactUs;
  String get privacyPolicyJa;
  String get howToUse;
  String get developperXWeb;
  String get developperXApp;

  /// Create a copy of UrlConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UrlConfigCopyWith<UrlConfig> get copyWith =>
      _$UrlConfigCopyWithImpl<UrlConfig>(this as UrlConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrlConfig &&
            (identical(other.contactUs, contactUs) ||
                other.contactUs == contactUs) &&
            (identical(other.privacyPolicyJa, privacyPolicyJa) ||
                other.privacyPolicyJa == privacyPolicyJa) &&
            (identical(other.howToUse, howToUse) ||
                other.howToUse == howToUse) &&
            (identical(other.developperXWeb, developperXWeb) ||
                other.developperXWeb == developperXWeb) &&
            (identical(other.developperXApp, developperXApp) ||
                other.developperXApp == developperXApp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactUs, privacyPolicyJa,
      howToUse, developperXWeb, developperXApp);

  @override
  String toString() {
    return 'UrlConfig(contactUs: $contactUs, privacyPolicyJa: $privacyPolicyJa, howToUse: $howToUse, developperXWeb: $developperXWeb, developperXApp: $developperXApp)';
  }
}

/// @nodoc
abstract mixin class $UrlConfigCopyWith<$Res> {
  factory $UrlConfigCopyWith(UrlConfig value, $Res Function(UrlConfig) _then) =
      _$UrlConfigCopyWithImpl;
  @useResult
  $Res call(
      {String contactUs,
      String privacyPolicyJa,
      String howToUse,
      String developperXWeb,
      String developperXApp});
}

/// @nodoc
class _$UrlConfigCopyWithImpl<$Res> implements $UrlConfigCopyWith<$Res> {
  _$UrlConfigCopyWithImpl(this._self, this._then);

  final UrlConfig _self;
  final $Res Function(UrlConfig) _then;

  /// Create a copy of UrlConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactUs = null,
    Object? privacyPolicyJa = null,
    Object? howToUse = null,
    Object? developperXWeb = null,
    Object? developperXApp = null,
  }) {
    return _then(_self.copyWith(
      contactUs: null == contactUs
          ? _self.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyJa: null == privacyPolicyJa
          ? _self.privacyPolicyJa
          : privacyPolicyJa // ignore: cast_nullable_to_non_nullable
              as String,
      howToUse: null == howToUse
          ? _self.howToUse
          : howToUse // ignore: cast_nullable_to_non_nullable
              as String,
      developperXWeb: null == developperXWeb
          ? _self.developperXWeb
          : developperXWeb // ignore: cast_nullable_to_non_nullable
              as String,
      developperXApp: null == developperXApp
          ? _self.developperXApp
          : developperXApp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UrlConfig].
extension UrlConfigPatterns on UrlConfig {
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
    TResult Function(_UrlConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UrlConfig() when $default != null:
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
    TResult Function(_UrlConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UrlConfig():
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
    TResult? Function(_UrlConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UrlConfig() when $default != null:
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
    TResult Function(String contactUs, String privacyPolicyJa, String howToUse,
            String developperXWeb, String developperXApp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UrlConfig() when $default != null:
        return $default(_that.contactUs, _that.privacyPolicyJa, _that.howToUse,
            _that.developperXWeb, _that.developperXApp);
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
    TResult Function(String contactUs, String privacyPolicyJa, String howToUse,
            String developperXWeb, String developperXApp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UrlConfig():
        return $default(_that.contactUs, _that.privacyPolicyJa, _that.howToUse,
            _that.developperXWeb, _that.developperXApp);
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
    TResult? Function(String contactUs, String privacyPolicyJa, String howToUse,
            String developperXWeb, String developperXApp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UrlConfig() when $default != null:
        return $default(_that.contactUs, _that.privacyPolicyJa, _that.howToUse,
            _that.developperXWeb, _that.developperXApp);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UrlConfig implements UrlConfig {
  const _UrlConfig(
      {required this.contactUs,
      required this.privacyPolicyJa,
      required this.howToUse,
      required this.developperXWeb,
      required this.developperXApp});

  @override
  final String contactUs;
  @override
  final String privacyPolicyJa;
  @override
  final String howToUse;
  @override
  final String developperXWeb;
  @override
  final String developperXApp;

  /// Create a copy of UrlConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UrlConfigCopyWith<_UrlConfig> get copyWith =>
      __$UrlConfigCopyWithImpl<_UrlConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlConfig &&
            (identical(other.contactUs, contactUs) ||
                other.contactUs == contactUs) &&
            (identical(other.privacyPolicyJa, privacyPolicyJa) ||
                other.privacyPolicyJa == privacyPolicyJa) &&
            (identical(other.howToUse, howToUse) ||
                other.howToUse == howToUse) &&
            (identical(other.developperXWeb, developperXWeb) ||
                other.developperXWeb == developperXWeb) &&
            (identical(other.developperXApp, developperXApp) ||
                other.developperXApp == developperXApp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactUs, privacyPolicyJa,
      howToUse, developperXWeb, developperXApp);

  @override
  String toString() {
    return 'UrlConfig(contactUs: $contactUs, privacyPolicyJa: $privacyPolicyJa, howToUse: $howToUse, developperXWeb: $developperXWeb, developperXApp: $developperXApp)';
  }
}

/// @nodoc
abstract mixin class _$UrlConfigCopyWith<$Res>
    implements $UrlConfigCopyWith<$Res> {
  factory _$UrlConfigCopyWith(
          _UrlConfig value, $Res Function(_UrlConfig) _then) =
      __$UrlConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String contactUs,
      String privacyPolicyJa,
      String howToUse,
      String developperXWeb,
      String developperXApp});
}

/// @nodoc
class __$UrlConfigCopyWithImpl<$Res> implements _$UrlConfigCopyWith<$Res> {
  __$UrlConfigCopyWithImpl(this._self, this._then);

  final _UrlConfig _self;
  final $Res Function(_UrlConfig) _then;

  /// Create a copy of UrlConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contactUs = null,
    Object? privacyPolicyJa = null,
    Object? howToUse = null,
    Object? developperXWeb = null,
    Object? developperXApp = null,
  }) {
    return _then(_UrlConfig(
      contactUs: null == contactUs
          ? _self.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyJa: null == privacyPolicyJa
          ? _self.privacyPolicyJa
          : privacyPolicyJa // ignore: cast_nullable_to_non_nullable
              as String,
      howToUse: null == howToUse
          ? _self.howToUse
          : howToUse // ignore: cast_nullable_to_non_nullable
              as String,
      developperXWeb: null == developperXWeb
          ? _self.developperXWeb
          : developperXWeb // ignore: cast_nullable_to_non_nullable
              as String,
      developperXApp: null == developperXApp
          ? _self.developperXApp
          : developperXApp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
