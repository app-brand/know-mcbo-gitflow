// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SignUpEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpMailImplCopyWith<$Res> {
  factory _$$SignUpMailImplCopyWith(
          _$SignUpMailImpl value, $Res Function(_$SignUpMailImpl) then) =
      __$$SignUpMailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpMailImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpMailImpl>
    implements _$$SignUpMailImplCopyWith<$Res> {
  __$$SignUpMailImplCopyWithImpl(
      _$SignUpMailImpl _value, $Res Function(_$SignUpMailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpMailImpl implements _SignUpMail {
  const _$SignUpMailImpl();

  @override
  String toString() {
    return 'SignUpEvent.signUpMail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpMailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return signUpMail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return signUpMail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (signUpMail != null) {
      return signUpMail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return signUpMail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return signUpMail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (signUpMail != null) {
      return signUpMail(this);
    }
    return orElse();
  }
}

abstract class _SignUpMail implements SignUpEvent {
  const factory _SignUpMail() = _$SignUpMailImpl;
}

/// @nodoc
abstract class _$$MailVerificationImplCopyWith<$Res> {
  factory _$$MailVerificationImplCopyWith(_$MailVerificationImpl value,
          $Res Function(_$MailVerificationImpl) then) =
      __$$MailVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MailVerificationImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$MailVerificationImpl>
    implements _$$MailVerificationImplCopyWith<$Res> {
  __$$MailVerificationImplCopyWithImpl(_$MailVerificationImpl _value,
      $Res Function(_$MailVerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MailVerificationImpl implements _MailVerification {
  const _$MailVerificationImpl();

  @override
  String toString() {
    return 'SignUpEvent.mailVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MailVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return mailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return mailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (mailVerification != null) {
      return mailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return mailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return mailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (mailVerification != null) {
      return mailVerification(this);
    }
    return orElse();
  }
}

abstract class _MailVerification implements SignUpEvent {
  const factory _MailVerification() = _$MailVerificationImpl;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl();

  @override
  String toString() {
    return 'SignUpEvent.sendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements SignUpEvent {
  const factory _SendOtp() = _$SendOtpImpl;
}

/// @nodoc
abstract class _$$SignUpFirestoreImplCopyWith<$Res> {
  factory _$$SignUpFirestoreImplCopyWith(_$SignUpFirestoreImpl value,
          $Res Function(_$SignUpFirestoreImpl) then) =
      __$$SignUpFirestoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpFirestoreImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpFirestoreImpl>
    implements _$$SignUpFirestoreImplCopyWith<$Res> {
  __$$SignUpFirestoreImplCopyWithImpl(
      _$SignUpFirestoreImpl _value, $Res Function(_$SignUpFirestoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpFirestoreImpl implements _SignUpFirestore {
  const _$SignUpFirestoreImpl();

  @override
  String toString() {
    return 'SignUpEvent.verifyOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpFirestoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return verifyOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return verifyOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _SignUpFirestore implements SignUpEvent {
  const factory _SignUpFirestore() = _$SignUpFirestoreImpl;
}

/// @nodoc
abstract class _$$PhoneChangedImplCopyWith<$Res> {
  factory _$$PhoneChangedImplCopyWith(
          _$PhoneChangedImpl value, $Res Function(_$PhoneChangedImpl) then) =
      __$$PhoneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone_numer});
}

/// @nodoc
class __$$PhoneChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PhoneChangedImpl>
    implements _$$PhoneChangedImplCopyWith<$Res> {
  __$$PhoneChangedImplCopyWithImpl(
      _$PhoneChangedImpl _value, $Res Function(_$PhoneChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_numer = null,
  }) {
    return _then(_$PhoneChangedImpl(
      null == phone_numer
          ? _value.phone_numer
          : phone_numer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChangedImpl implements _PhoneChanged {
  const _$PhoneChangedImpl(this.phone_numer);

  @override
  final String phone_numer;

  @override
  String toString() {
    return 'SignUpEvent.phoneChanged(phone_numer: $phone_numer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneChangedImpl &&
            (identical(other.phone_numer, phone_numer) ||
                other.phone_numer == phone_numer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone_numer);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      __$$PhoneChangedImplCopyWithImpl<_$PhoneChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() mailVerification,
    required TResult Function() sendOtp,
    required TResult Function() verifyOtp,
    required TResult Function(String phone_numer) phoneChanged,
  }) {
    return phoneChanged(phone_numer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? mailVerification,
    TResult? Function()? sendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function(String phone_numer)? phoneChanged,
  }) {
    return phoneChanged?.call(phone_numer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? mailVerification,
    TResult Function()? sendOtp,
    TResult Function()? verifyOtp,
    TResult Function(String phone_numer)? phoneChanged,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone_numer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_MailVerification value) mailVerification,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignUpFirestore value) verifyOtp,
    required TResult Function(_PhoneChanged value) phoneChanged,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_MailVerification value)? mailVerification,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignUpFirestore value)? verifyOtp,
    TResult? Function(_PhoneChanged value)? phoneChanged,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_MailVerification value)? mailVerification,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignUpFirestore value)? verifyOtp,
    TResult Function(_PhoneChanged value)? phoneChanged,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements SignUpEvent {
  const factory _PhoneChanged(final String phone_numer) = _$PhoneChangedImpl;

  String get phone_numer;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password =>
      throw _privateConstructorUsedError; //required PhoneNumber phone_number,
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get userFailureOrUserSuccess =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool isEmailVerified,
      Option<Either<UserFailure, Unit>> userFailureOrUserSuccess});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isEmailVerified = null,
    Object? userFailureOrUserSuccess = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrUserSuccess: null == userFailureOrUserSuccess
          ? _value.userFailureOrUserSuccess
          : userFailureOrUserSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool isEmailVerified,
      Option<Either<UserFailure, Unit>> userFailureOrUserSuccess});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isEmailVerified = null,
    Object? userFailureOrUserSuccess = null,
  }) {
    return _then(_$SignUpStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrUserSuccess: null == userFailureOrUserSuccess
          ? _value.userFailureOrUserSuccess
          : userFailureOrUserSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.isEmailVerified,
      required this.userFailureOrUserSuccess});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
//required PhoneNumber phone_number,
  @override
  final bool isSubmitting;
  @override
  final bool isEmailVerified;
  @override
  final Option<Either<UserFailure, Unit>> userFailureOrUserSuccess;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, isEmailVerified: $isEmailVerified, userFailureOrUserSuccess: $userFailureOrUserSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(
                    other.userFailureOrUserSuccess, userFailureOrUserSuccess) ||
                other.userFailureOrUserSuccess == userFailureOrUserSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password,
      isSubmitting, isEmailVerified, userFailureOrUserSuccess);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool isSubmitting,
      required final bool isEmailVerified,
      required final Option<Either<UserFailure, Unit>>
          userFailureOrUserSuccess}) = _$SignUpStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password; //required PhoneNumber phone_number,
  @override
  bool get isSubmitting;
  @override
  bool get isEmailVerified;
  @override
  Option<Either<UserFailure, Unit>> get userFailureOrUserSuccess;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
