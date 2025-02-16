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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
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
  $Res call({PhoneNumber phone_numer});
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
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$PhoneChangedImpl implements _PhoneChanged {
  const _$PhoneChangedImpl(this.phone_numer);

  @override
  final PhoneNumber phone_numer;

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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements SignUpEvent {
  const factory _PhoneChanged(final PhoneNumber phone_numer) =
      _$PhoneChangedImpl;

  PhoneNumber get phone_numer;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'SignUpEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
  }) {
    return firstNameChanged(firstName);
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
  }) {
    return firstNameChanged?.call(firstName);
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
  }) {
    return firstNameChanged(this);
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
  }) {
    return firstNameChanged?.call(this);
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements SignUpEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements _LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
  }) {
    return lastNameChanged(lastName);
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
  }) {
    return lastNameChanged?.call(lastName);
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
  }) {
    return lastNameChanged(this);
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
  }) {
    return lastNameChanged?.call(this);
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements SignUpEvent {
  const factory _LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AgeChangedImplCopyWith<$Res> {
  factory _$$AgeChangedImplCopyWith(
          _$AgeChangedImpl value, $Res Function(_$AgeChangedImpl) then) =
      __$$AgeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String age});
}

/// @nodoc
class __$$AgeChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$AgeChangedImpl>
    implements _$$AgeChangedImplCopyWith<$Res> {
  __$$AgeChangedImplCopyWithImpl(
      _$AgeChangedImpl _value, $Res Function(_$AgeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
  }) {
    return _then(_$AgeChangedImpl(
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AgeChangedImpl implements _AgeChanged {
  const _$AgeChangedImpl(this.age);

  @override
  final String age;

  @override
  String toString() {
    return 'SignUpEvent.ageChanged(age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeChangedImpl &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, age);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeChangedImplCopyWith<_$AgeChangedImpl> get copyWith =>
      __$$AgeChangedImplCopyWithImpl<_$AgeChangedImpl>(this, _$identity);

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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
  }) {
    return ageChanged(age);
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
  }) {
    return ageChanged?.call(age);
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
    required TResult orElse(),
  }) {
    if (ageChanged != null) {
      return ageChanged(age);
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
  }) {
    return ageChanged(this);
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
  }) {
    return ageChanged?.call(this);
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    required TResult orElse(),
  }) {
    if (ageChanged != null) {
      return ageChanged(this);
    }
    return orElse();
  }
}

abstract class _AgeChanged implements SignUpEvent {
  const factory _AgeChanged(final String age) = _$AgeChangedImpl;

  String get age;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgeChangedImplCopyWith<_$AgeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderChangedImplCopyWith<$Res> {
  factory _$$GenderChangedImplCopyWith(
          _$GenderChangedImpl value, $Res Function(_$GenderChangedImpl) then) =
      __$$GenderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gender});
}

/// @nodoc
class __$$GenderChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$GenderChangedImpl>
    implements _$$GenderChangedImplCopyWith<$Res> {
  __$$GenderChangedImplCopyWithImpl(
      _$GenderChangedImpl _value, $Res Function(_$GenderChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$GenderChangedImpl(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenderChangedImpl implements _GenderChanged {
  const _$GenderChangedImpl(this.gender);

  @override
  final String gender;

  @override
  String toString() {
    return 'SignUpEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderChangedImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      __$$GenderChangedImplCopyWithImpl<_$GenderChangedImpl>(this, _$identity);

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
    required TResult Function(PhoneNumber phone_numer) phoneChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function(String gender) genderChanged,
  }) {
    return genderChanged(gender);
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
    TResult? Function(PhoneNumber phone_numer)? phoneChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String age)? ageChanged,
    TResult? Function(String gender)? genderChanged,
  }) {
    return genderChanged?.call(gender);
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
    TResult Function(PhoneNumber phone_numer)? phoneChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String age)? ageChanged,
    TResult Function(String gender)? genderChanged,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(gender);
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_AgeChanged value) ageChanged,
    required TResult Function(_GenderChanged value) genderChanged,
  }) {
    return genderChanged(this);
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
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_AgeChanged value)? ageChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
  }) {
    return genderChanged?.call(this);
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
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_AgeChanged value)? ageChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements SignUpEvent {
  const factory _GenderChanged(final String gender) = _$GenderChangedImpl;

  String get gender;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get userFailureOrUserSuccess =>
      throw _privateConstructorUsedError;
  bool get isEmailVerified =>
      throw _privateConstructorUsedError; // ✅ Nuevos campos
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;

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
      Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
      bool isEmailVerified,
      String firstName,
      String lastName,
      String age,
      String gender,
      PhoneNumber phoneNumber});
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
    Object? userFailureOrUserSuccess = null,
    Object? isEmailVerified = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
    Object? gender = null,
    Object? phoneNumber = null,
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
      userFailureOrUserSuccess: null == userFailureOrUserSuccess
          ? _value.userFailureOrUserSuccess
          : userFailureOrUserSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
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
      Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
      bool isEmailVerified,
      String firstName,
      String lastName,
      String age,
      String gender,
      PhoneNumber phoneNumber});
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
    Object? userFailureOrUserSuccess = null,
    Object? isEmailVerified = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
    Object? gender = null,
    Object? phoneNumber = null,
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
      userFailureOrUserSuccess: null == userFailureOrUserSuccess
          ? _value.userFailureOrUserSuccess
          : userFailureOrUserSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.userFailureOrUserSuccess,
      required this.isEmailVerified,
      required this.firstName,
      required this.lastName,
      required this.age,
      required this.gender,
      required this.phoneNumber});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<UserFailure, Unit>> userFailureOrUserSuccess;
  @override
  final bool isEmailVerified;
// ✅ Nuevos campos
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String age;
  @override
  final String gender;
  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, userFailureOrUserSuccess: $userFailureOrUserSuccess, isEmailVerified: $isEmailVerified, firstName: $firstName, lastName: $lastName, age: $age, gender: $gender, phoneNumber: $phoneNumber)';
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
            (identical(
                    other.userFailureOrUserSuccess, userFailureOrUserSuccess) ||
                other.userFailureOrUserSuccess == userFailureOrUserSuccess) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      isSubmitting,
      userFailureOrUserSuccess,
      isEmailVerified,
      firstName,
      lastName,
      age,
      gender,
      phoneNumber);

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
      required final Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
      required final bool isEmailVerified,
      required final String firstName,
      required final String lastName,
      required final String age,
      required final String gender,
      required final PhoneNumber phoneNumber}) = _$SignUpStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  Option<Either<UserFailure, Unit>> get userFailureOrUserSuccess;
  @override
  bool get isEmailVerified; // ✅ Nuevos campos
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get age;
  @override
  String get gender;
  @override
  PhoneNumber get phoneNumber;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
