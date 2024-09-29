// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueFailure
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
abstract class _$$MissingUppercaseImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MissingUppercaseImplCopyWith(_$MissingUppercaseImpl<T> value,
          $Res Function(_$MissingUppercaseImpl<T>) then) =
      __$$MissingUppercaseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MissingUppercaseImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MissingUppercaseImpl<T>>
    implements _$$MissingUppercaseImplCopyWith<T, $Res> {
  __$$MissingUppercaseImplCopyWithImpl(_$MissingUppercaseImpl<T> _value,
      $Res Function(_$MissingUppercaseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MissingUppercaseImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MissingUppercaseImpl<T> extends MissingUppercase<T>
    with DiagnosticableTreeMixin {
  const _$MissingUppercaseImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.missingUppercase(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.missingUppercase'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingUppercaseImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingUppercaseImplCopyWith<T, _$MissingUppercaseImpl<T>> get copyWith =>
      __$$MissingUppercaseImplCopyWithImpl<T, _$MissingUppercaseImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return missingUppercase(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return missingUppercase?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (missingUppercase != null) {
      return missingUppercase(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return missingUppercase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return missingUppercase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (missingUppercase != null) {
      return missingUppercase(this);
    }
    return orElse();
  }
}

abstract class MissingUppercase<T> extends ValueFailure<T> {
  const factory MissingUppercase({required final T failedValue}) =
      _$MissingUppercaseImpl<T>;
  const MissingUppercase._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissingUppercaseImplCopyWith<T, _$MissingUppercaseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> extends InvalidEmail<T>
    with DiagnosticableTreeMixin {
  const _$InvalidEmailImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> extends ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;
  const InvalidEmail._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> extends ShortPassword<T>
    with DiagnosticableTreeMixin {
  const _$ShortPasswordImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> extends ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPasswordImpl<T>;
  const ShortPassword._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingSpecialSymbolImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MissingSpecialSymbolImplCopyWith(
          _$MissingSpecialSymbolImpl<T> value,
          $Res Function(_$MissingSpecialSymbolImpl<T>) then) =
      __$$MissingSpecialSymbolImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MissingSpecialSymbolImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MissingSpecialSymbolImpl<T>>
    implements _$$MissingSpecialSymbolImplCopyWith<T, $Res> {
  __$$MissingSpecialSymbolImplCopyWithImpl(_$MissingSpecialSymbolImpl<T> _value,
      $Res Function(_$MissingSpecialSymbolImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MissingSpecialSymbolImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MissingSpecialSymbolImpl<T> extends MissingSpecialSymbol<T>
    with DiagnosticableTreeMixin {
  const _$MissingSpecialSymbolImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.missingSpecialSymbol(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ValueFailure<$T>.missingSpecialSymbol'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingSpecialSymbolImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingSpecialSymbolImplCopyWith<T, _$MissingSpecialSymbolImpl<T>>
      get copyWith => __$$MissingSpecialSymbolImplCopyWithImpl<T,
          _$MissingSpecialSymbolImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return missingSpecialSymbol(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return missingSpecialSymbol?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (missingSpecialSymbol != null) {
      return missingSpecialSymbol(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return missingSpecialSymbol(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return missingSpecialSymbol?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (missingSpecialSymbol != null) {
      return missingSpecialSymbol(this);
    }
    return orElse();
  }
}

abstract class MissingSpecialSymbol<T> extends ValueFailure<T> {
  const factory MissingSpecialSymbol({required final T failedValue}) =
      _$MissingSpecialSymbolImpl<T>;
  const MissingSpecialSymbol._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissingSpecialSymbolImplCopyWith<T, _$MissingSpecialSymbolImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingNumberPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MissingNumberPasswordImplCopyWith(
          _$MissingNumberPasswordImpl<T> value,
          $Res Function(_$MissingNumberPasswordImpl<T>) then) =
      __$$MissingNumberPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MissingNumberPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MissingNumberPasswordImpl<T>>
    implements _$$MissingNumberPasswordImplCopyWith<T, $Res> {
  __$$MissingNumberPasswordImplCopyWithImpl(
      _$MissingNumberPasswordImpl<T> _value,
      $Res Function(_$MissingNumberPasswordImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MissingNumberPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MissingNumberPasswordImpl<T> extends MissingNumberPassword<T>
    with DiagnosticableTreeMixin {
  const _$MissingNumberPasswordImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.missingNumberPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ValueFailure<$T>.missingNumberPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingNumberPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingNumberPasswordImplCopyWith<T, _$MissingNumberPasswordImpl<T>>
      get copyWith => __$$MissingNumberPasswordImplCopyWithImpl<T,
          _$MissingNumberPasswordImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return missingNumberPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return missingNumberPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (missingNumberPassword != null) {
      return missingNumberPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return missingNumberPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return missingNumberPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (missingNumberPassword != null) {
      return missingNumberPassword(this);
    }
    return orElse();
  }
}

abstract class MissingNumberPassword<T> extends ValueFailure<T> {
  const factory MissingNumberPassword({required final T failedValue}) =
      _$MissingNumberPasswordImpl<T>;
  const MissingNumberPassword._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissingNumberPasswordImplCopyWith<T, _$MissingNumberPasswordImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$invalidPhoneNumberImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$invalidPhoneNumberImplCopyWith(_$invalidPhoneNumberImpl<T> value,
          $Res Function(_$invalidPhoneNumberImpl<T>) then) =
      __$$invalidPhoneNumberImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$invalidPhoneNumberImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$invalidPhoneNumberImpl<T>>
    implements _$$invalidPhoneNumberImplCopyWith<T, $Res> {
  __$$invalidPhoneNumberImplCopyWithImpl(_$invalidPhoneNumberImpl<T> _value,
      $Res Function(_$invalidPhoneNumberImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$invalidPhoneNumberImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$invalidPhoneNumberImpl<T> extends invalidPhoneNumber<T>
    with DiagnosticableTreeMixin {
  const _$invalidPhoneNumberImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhoneNumber'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$invalidPhoneNumberImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$invalidPhoneNumberImplCopyWith<T, _$invalidPhoneNumberImpl<T>>
      get copyWith => __$$invalidPhoneNumberImplCopyWithImpl<T,
          _$invalidPhoneNumberImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class invalidPhoneNumber<T> extends ValueFailure<T> {
  const factory invalidPhoneNumber({required final T failedValue}) =
      _$invalidPhoneNumberImpl<T>;
  const invalidPhoneNumber._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$invalidPhoneNumberImplCopyWith<T, _$invalidPhoneNumberImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$invalidOtpImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$invalidOtpImplCopyWith(
          _$invalidOtpImpl<T> value, $Res Function(_$invalidOtpImpl<T>) then) =
      __$$invalidOtpImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$invalidOtpImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$invalidOtpImpl<T>>
    implements _$$invalidOtpImplCopyWith<T, $Res> {
  __$$invalidOtpImplCopyWithImpl(
      _$invalidOtpImpl<T> _value, $Res Function(_$invalidOtpImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$invalidOtpImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$invalidOtpImpl<T> extends invalidOtp<T> with DiagnosticableTreeMixin {
  const _$invalidOtpImpl({required this.failedValue}) : super._();

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidOtp(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidOtp'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$invalidOtpImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$invalidOtpImplCopyWith<T, _$invalidOtpImpl<T>> get copyWith =>
      __$$invalidOtpImplCopyWithImpl<T, _$invalidOtpImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return invalidOtp(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return invalidOtp?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return invalidOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return invalidOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp(this);
    }
    return orElse();
  }
}

abstract class invalidOtp<T> extends ValueFailure<T> {
  const factory invalidOtp({required final T failedValue}) =
      _$invalidOtpImpl<T>;
  const invalidOtp._() : super._();

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$invalidOtpImplCopyWith<T, _$invalidOtpImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomFailureImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$CustomFailureImplCopyWith(_$CustomFailureImpl<T> value,
          $Res Function(_$CustomFailureImpl<T>) then) =
      __$$CustomFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, T failedValue});
}

/// @nodoc
class __$$CustomFailureImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$CustomFailureImpl<T>>
    implements _$$CustomFailureImplCopyWith<T, $Res> {
  __$$CustomFailureImplCopyWithImpl(_$CustomFailureImpl<T> _value,
      $Res Function(_$CustomFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? failedValue = freezed,
  }) {
    return _then(_$CustomFailureImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CustomFailureImpl<T> extends CustomFailure<T>
    with DiagnosticableTreeMixin {
  _$CustomFailureImpl({required this.message, required this.failedValue})
      : super._();

  @override
  final String message;
  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.customFailure(message: $message, failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.customFailure'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailureImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureImplCopyWith<T, _$CustomFailureImpl<T>> get copyWith =>
      __$$CustomFailureImplCopyWithImpl<T, _$CustomFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) missingUppercase,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) missingSpecialSymbol,
    required TResult Function(T failedValue) missingNumberPassword,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidOtp,
    required TResult Function(String message, T failedValue) customFailure,
  }) {
    return customFailure(message, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? missingUppercase,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? missingSpecialSymbol,
    TResult? Function(T failedValue)? missingNumberPassword,
    TResult? Function(T failedValue)? invalidPhoneNumber,
    TResult? Function(T failedValue)? invalidOtp,
    TResult? Function(String message, T failedValue)? customFailure,
  }) {
    return customFailure?.call(message, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? missingUppercase,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? missingSpecialSymbol,
    TResult Function(T failedValue)? missingNumberPassword,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidOtp,
    TResult Function(String message, T failedValue)? customFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(message, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissingUppercase<T> value) missingUppercase,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(MissingSpecialSymbol<T> value)
        missingSpecialSymbol,
    required TResult Function(MissingNumberPassword<T> value)
        missingNumberPassword,
    required TResult Function(invalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(invalidOtp<T> value) invalidOtp,
    required TResult Function(CustomFailure<T> value) customFailure,
  }) {
    return customFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MissingUppercase<T> value)? missingUppercase,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult? Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult? Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult? Function(invalidOtp<T> value)? invalidOtp,
    TResult? Function(CustomFailure<T> value)? customFailure,
  }) {
    return customFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissingUppercase<T> value)? missingUppercase,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(MissingSpecialSymbol<T> value)? missingSpecialSymbol,
    TResult Function(MissingNumberPassword<T> value)? missingNumberPassword,
    TResult Function(invalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(invalidOtp<T> value)? invalidOtp,
    TResult Function(CustomFailure<T> value)? customFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(this);
    }
    return orElse();
  }
}

abstract class CustomFailure<T> extends ValueFailure<T> {
  factory CustomFailure(
      {required final String message,
      required final T failedValue}) = _$CustomFailureImpl<T>;
  CustomFailure._() : super._();

  String get message;
  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomFailureImplCopyWith<T, _$CustomFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
