// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFailureCopyWith<T, UserFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<T, $Res> {
  factory $UserFailureCopyWith(
          UserFailure<T> value, $Res Function(UserFailure<T>) then) =
      _$UserFailureCopyWithImpl<T, $Res, UserFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$UserFailureCopyWithImpl<T, $Res, $Val extends UserFailure<T>>
    implements $UserFailureCopyWith<T, $Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$cancelledByUserImplCopyWith<T, $Res>
    implements $UserFailureCopyWith<T, $Res> {
  factory _$$cancelledByUserImplCopyWith(_$cancelledByUserImpl<T> value,
          $Res Function(_$cancelledByUserImpl<T>) then) =
      __$$cancelledByUserImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$cancelledByUserImplCopyWithImpl<T, $Res>
    extends _$UserFailureCopyWithImpl<T, $Res, _$cancelledByUserImpl<T>>
    implements _$$cancelledByUserImplCopyWith<T, $Res> {
  __$$cancelledByUserImplCopyWithImpl(_$cancelledByUserImpl<T> _value,
      $Res Function(_$cancelledByUserImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$cancelledByUserImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$cancelledByUserImpl<T> extends cancelledByUser<T>
    with DiagnosticableTreeMixin {
  const _$cancelledByUserImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure<$T>.cancelledByUser(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure<$T>.cancelledByUser'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$cancelledByUserImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$cancelledByUserImplCopyWith<T, _$cancelledByUserImpl<T>> get copyWith =>
      __$$cancelledByUserImplCopyWithImpl<T, _$cancelledByUserImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) {
    return cancelledByUser(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) {
    return cancelledByUser?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class cancelledByUser<T> extends UserFailure<T> {
  const factory cancelledByUser({required final T failedValue}) =
      _$cancelledByUserImpl<T>;
  const cancelledByUser._() : super._();

  @override
  T get failedValue;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$cancelledByUserImplCopyWith<T, _$cancelledByUserImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$invalidEmailAndPasswordCombinationImplCopyWith<T, $Res>
    implements $UserFailureCopyWith<T, $Res> {
  factory _$$invalidEmailAndPasswordCombinationImplCopyWith(
          _$invalidEmailAndPasswordCombinationImpl<T> value,
          $Res Function(_$invalidEmailAndPasswordCombinationImpl<T>) then) =
      __$$invalidEmailAndPasswordCombinationImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$invalidEmailAndPasswordCombinationImplCopyWithImpl<T, $Res>
    extends _$UserFailureCopyWithImpl<T, $Res,
        _$invalidEmailAndPasswordCombinationImpl<T>>
    implements _$$invalidEmailAndPasswordCombinationImplCopyWith<T, $Res> {
  __$$invalidEmailAndPasswordCombinationImplCopyWithImpl(
      _$invalidEmailAndPasswordCombinationImpl<T> _value,
      $Res Function(_$invalidEmailAndPasswordCombinationImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$invalidEmailAndPasswordCombinationImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$invalidEmailAndPasswordCombinationImpl<T>
    extends invalidEmailAndPasswordCombination<T> with DiagnosticableTreeMixin {
  const _$invalidEmailAndPasswordCombinationImpl({required this.failedValue})
      : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure<$T>.invalidEmailAndPasswordCombination(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'UserFailure<$T>.invalidEmailAndPasswordCombination'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$invalidEmailAndPasswordCombinationImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$invalidEmailAndPasswordCombinationImplCopyWith<T,
          _$invalidEmailAndPasswordCombinationImpl<T>>
      get copyWith => __$$invalidEmailAndPasswordCombinationImplCopyWithImpl<T,
          _$invalidEmailAndPasswordCombinationImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) {
    return invalidEmailAndPasswordCombination(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) {
    return invalidEmailAndPasswordCombination?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class invalidEmailAndPasswordCombination<T> extends UserFailure<T> {
  const factory invalidEmailAndPasswordCombination(
          {required final T failedValue}) =
      _$invalidEmailAndPasswordCombinationImpl<T>;
  const invalidEmailAndPasswordCombination._() : super._();

  @override
  T get failedValue;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$invalidEmailAndPasswordCombinationImplCopyWith<T,
          _$invalidEmailAndPasswordCombinationImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$emailNotVerifiedImplCopyWith<T, $Res>
    implements $UserFailureCopyWith<T, $Res> {
  factory _$$emailNotVerifiedImplCopyWith(_$emailNotVerifiedImpl<T> value,
          $Res Function(_$emailNotVerifiedImpl<T>) then) =
      __$$emailNotVerifiedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$emailNotVerifiedImplCopyWithImpl<T, $Res>
    extends _$UserFailureCopyWithImpl<T, $Res, _$emailNotVerifiedImpl<T>>
    implements _$$emailNotVerifiedImplCopyWith<T, $Res> {
  __$$emailNotVerifiedImplCopyWithImpl(_$emailNotVerifiedImpl<T> _value,
      $Res Function(_$emailNotVerifiedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$emailNotVerifiedImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$emailNotVerifiedImpl<T> extends emailNotVerified<T>
    with DiagnosticableTreeMixin {
  const _$emailNotVerifiedImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure<$T>.emailNotVerified(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure<$T>.emailNotVerified'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$emailNotVerifiedImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$emailNotVerifiedImplCopyWith<T, _$emailNotVerifiedImpl<T>> get copyWith =>
      __$$emailNotVerifiedImplCopyWithImpl<T, _$emailNotVerifiedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) {
    return emailNotVerified(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) {
    return emailNotVerified?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) {
    return emailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class emailNotVerified<T> extends UserFailure<T> {
  const factory emailNotVerified({required final T failedValue}) =
      _$emailNotVerifiedImpl<T>;
  const emailNotVerified._() : super._();

  @override
  T get failedValue;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$emailNotVerifiedImplCopyWith<T, _$emailNotVerifiedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$otpExpiredImplCopyWith<T, $Res>
    implements $UserFailureCopyWith<T, $Res> {
  factory _$$otpExpiredImplCopyWith(
          _$otpExpiredImpl<T> value, $Res Function(_$otpExpiredImpl<T>) then) =
      __$$otpExpiredImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$otpExpiredImplCopyWithImpl<T, $Res>
    extends _$UserFailureCopyWithImpl<T, $Res, _$otpExpiredImpl<T>>
    implements _$$otpExpiredImplCopyWith<T, $Res> {
  __$$otpExpiredImplCopyWithImpl(
      _$otpExpiredImpl<T> _value, $Res Function(_$otpExpiredImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$otpExpiredImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$otpExpiredImpl<T> extends otpExpired<T> with DiagnosticableTreeMixin {
  const _$otpExpiredImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure<$T>.otpExpired(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure<$T>.otpExpired'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$otpExpiredImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$otpExpiredImplCopyWith<T, _$otpExpiredImpl<T>> get copyWith =>
      __$$otpExpiredImplCopyWithImpl<T, _$otpExpiredImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) {
    return otpExpired(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) {
    return otpExpired?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (otpExpired != null) {
      return otpExpired(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) {
    return otpExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) {
    return otpExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (otpExpired != null) {
      return otpExpired(this);
    }
    return orElse();
  }
}

abstract class otpExpired<T> extends UserFailure<T> {
  const factory otpExpired({required final T failedValue}) =
      _$otpExpiredImpl<T>;
  const otpExpired._() : super._();

  @override
  T get failedValue;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$otpExpiredImplCopyWith<T, _$otpExpiredImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$emailLinkExpiredImplCopyWith<T, $Res>
    implements $UserFailureCopyWith<T, $Res> {
  factory _$$emailLinkExpiredImplCopyWith(_$emailLinkExpiredImpl<T> value,
          $Res Function(_$emailLinkExpiredImpl<T>) then) =
      __$$emailLinkExpiredImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$emailLinkExpiredImplCopyWithImpl<T, $Res>
    extends _$UserFailureCopyWithImpl<T, $Res, _$emailLinkExpiredImpl<T>>
    implements _$$emailLinkExpiredImplCopyWith<T, $Res> {
  __$$emailLinkExpiredImplCopyWithImpl(_$emailLinkExpiredImpl<T> _value,
      $Res Function(_$emailLinkExpiredImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$emailLinkExpiredImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$emailLinkExpiredImpl<T> extends emailLinkExpired<T>
    with DiagnosticableTreeMixin {
  const _$emailLinkExpiredImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure<$T>.emailLinkExpired(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure<$T>.emailLinkExpired'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$emailLinkExpiredImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$emailLinkExpiredImplCopyWith<T, _$emailLinkExpiredImpl<T>> get copyWith =>
      __$$emailLinkExpiredImplCopyWithImpl<T, _$emailLinkExpiredImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) {
    return emailLinkExpired(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) {
    return emailLinkExpired?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (emailLinkExpired != null) {
      return emailLinkExpired(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) {
    return emailLinkExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) {
    return emailLinkExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (emailLinkExpired != null) {
      return emailLinkExpired(this);
    }
    return orElse();
  }
}

abstract class emailLinkExpired<T> extends UserFailure<T> {
  const factory emailLinkExpired({required final T failedValue}) =
      _$emailLinkExpiredImpl<T>;
  const emailLinkExpired._() : super._();

  @override
  T get failedValue;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$emailLinkExpiredImplCopyWith<T, _$emailLinkExpiredImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$serverErrorImplCopyWith<T, $Res>
    implements $UserFailureCopyWith<T, $Res> {
  factory _$$serverErrorImplCopyWith(_$serverErrorImpl<T> value,
          $Res Function(_$serverErrorImpl<T>) then) =
      __$$serverErrorImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$serverErrorImplCopyWithImpl<T, $Res>
    extends _$UserFailureCopyWithImpl<T, $Res, _$serverErrorImpl<T>>
    implements _$$serverErrorImplCopyWith<T, $Res> {
  __$$serverErrorImplCopyWithImpl(
      _$serverErrorImpl<T> _value, $Res Function(_$serverErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$serverErrorImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$serverErrorImpl<T> extends serverError<T> with DiagnosticableTreeMixin {
  const _$serverErrorImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure<$T>.serverError(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure<$T>.serverError'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$serverErrorImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$serverErrorImplCopyWith<T, _$serverErrorImpl<T>> get copyWith =>
      __$$serverErrorImplCopyWithImpl<T, _$serverErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cancelledByUser,
    required TResult Function(T failedValue) invalidEmailAndPasswordCombination,
    required TResult Function(T failedValue) emailNotVerified,
    required TResult Function(T failedValue) otpExpired,
    required TResult Function(T failedValue) emailLinkExpired,
    required TResult Function(T failedValue) serverError,
  }) {
    return serverError(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cancelledByUser,
    TResult? Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult? Function(T failedValue)? emailNotVerified,
    TResult? Function(T failedValue)? otpExpired,
    TResult? Function(T failedValue)? emailLinkExpired,
    TResult? Function(T failedValue)? serverError,
  }) {
    return serverError?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cancelledByUser,
    TResult Function(T failedValue)? invalidEmailAndPasswordCombination,
    TResult Function(T failedValue)? emailNotVerified,
    TResult Function(T failedValue)? otpExpired,
    TResult Function(T failedValue)? emailLinkExpired,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(cancelledByUser<T> value) cancelledByUser,
    required TResult Function(invalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
    required TResult Function(emailNotVerified<T> value) emailNotVerified,
    required TResult Function(otpExpired<T> value) otpExpired,
    required TResult Function(emailLinkExpired<T> value) emailLinkExpired,
    required TResult Function(serverError<T> value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(cancelledByUser<T> value)? cancelledByUser,
    TResult? Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(emailNotVerified<T> value)? emailNotVerified,
    TResult? Function(otpExpired<T> value)? otpExpired,
    TResult? Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult? Function(serverError<T> value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(cancelledByUser<T> value)? cancelledByUser,
    TResult Function(invalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    TResult Function(emailNotVerified<T> value)? emailNotVerified,
    TResult Function(otpExpired<T> value)? otpExpired,
    TResult Function(emailLinkExpired<T> value)? emailLinkExpired,
    TResult Function(serverError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class serverError<T> extends UserFailure<T> {
  const factory serverError({required final T failedValue}) =
      _$serverErrorImpl<T>;
  const serverError._() : super._();

  @override
  T get failedValue;

  /// Create a copy of UserFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$serverErrorImplCopyWith<T, _$serverErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
