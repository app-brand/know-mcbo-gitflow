// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sing_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpMail,
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SignUpMail value) signUpMail,
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingUpEventCopyWith<$Res> {
  factory $SingUpEventCopyWith(
          SingUpEvent value, $Res Function(SingUpEvent) then) =
      _$SingUpEventCopyWithImpl<$Res, SingUpEvent>;
}

/// @nodoc
class _$SingUpEventCopyWithImpl<$Res, $Val extends SingUpEvent>
    implements $SingUpEventCopyWith<$Res> {
  _$SingUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingUpEvent
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
    extends _$SingUpEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SingUpEvent.started()';
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
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
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
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
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
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
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
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
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
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
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
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SingUpEvent {
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
    extends _$SingUpEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpEvent
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
    return 'SingUpEvent.emailChanged(email: $email)';
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

  /// Create a copy of SingUpEvent
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
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
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
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
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
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
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
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
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
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
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
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SingUpEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of SingUpEvent
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
    extends _$SingUpEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpEvent
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
    return 'SingUpEvent.passwordChanged(password: $password)';
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

  /// Create a copy of SingUpEvent
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
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
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
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
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
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
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
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
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
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
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
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SingUpEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of SingUpEvent
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
    extends _$SingUpEventCopyWithImpl<$Res, _$SignUpMailImpl>
    implements _$$SignUpMailImplCopyWith<$Res> {
  __$$SignUpMailImplCopyWithImpl(
      _$SignUpMailImpl _value, $Res Function(_$SignUpMailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpMailImpl implements _SignUpMail {
  const _$SignUpMailImpl();

  @override
  String toString() {
    return 'SingUpEvent.signUpMail()';
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
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
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
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
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
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
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
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
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
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
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
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (signUpMail != null) {
      return signUpMail(this);
    }
    return orElse();
  }
}

abstract class _SignUpMail implements SingUpEvent {
  const factory _SignUpMail() = _$SignUpMailImpl;
}

/// @nodoc
abstract class _$$SignUpPhoneImplCopyWith<$Res> {
  factory _$$SignUpPhoneImplCopyWith(
          _$SignUpPhoneImpl value, $Res Function(_$SignUpPhoneImpl) then) =
      __$$SignUpPhoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpPhoneImplCopyWithImpl<$Res>
    extends _$SingUpEventCopyWithImpl<$Res, _$SignUpPhoneImpl>
    implements _$$SignUpPhoneImplCopyWith<$Res> {
  __$$SignUpPhoneImplCopyWithImpl(
      _$SignUpPhoneImpl _value, $Res Function(_$SignUpPhoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpPhoneImpl implements _SignUpPhone {
  const _$SignUpPhoneImpl();

  @override
  String toString() {
    return 'SingUpEvent.signUpPhone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpPhoneImpl);
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
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
  }) {
    return signUpPhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
  }) {
    return signUpPhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (signUpPhone != null) {
      return signUpPhone();
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
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
  }) {
    return signUpPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
  }) {
    return signUpPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (signUpPhone != null) {
      return signUpPhone(this);
    }
    return orElse();
  }
}

abstract class _SignUpPhone implements SingUpEvent {
  const factory _SignUpPhone() = _$SignUpPhoneImpl;
}

/// @nodoc
abstract class _$$SignUpFirestoreImplCopyWith<$Res> {
  factory _$$SignUpFirestoreImplCopyWith(_$SignUpFirestoreImpl value,
          $Res Function(_$SignUpFirestoreImpl) then) =
      __$$SignUpFirestoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpFirestoreImplCopyWithImpl<$Res>
    extends _$SingUpEventCopyWithImpl<$Res, _$SignUpFirestoreImpl>
    implements _$$SignUpFirestoreImplCopyWith<$Res> {
  __$$SignUpFirestoreImplCopyWithImpl(
      _$SignUpFirestoreImpl _value, $Res Function(_$SignUpFirestoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpFirestoreImpl implements _SignUpFirestore {
  const _$SignUpFirestoreImpl();

  @override
  String toString() {
    return 'SingUpEvent.siguUpFirestore()';
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
    required TResult Function() signUpPhone,
    required TResult Function() siguUpFirestore,
  }) {
    return siguUpFirestore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signUpMail,
    TResult? Function()? signUpPhone,
    TResult? Function()? siguUpFirestore,
  }) {
    return siguUpFirestore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpMail,
    TResult Function()? signUpPhone,
    TResult Function()? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (siguUpFirestore != null) {
      return siguUpFirestore();
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
    required TResult Function(_SignUpPhone value) signUpPhone,
    required TResult Function(_SignUpFirestore value) siguUpFirestore,
  }) {
    return siguUpFirestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SignUpMail value)? signUpMail,
    TResult? Function(_SignUpPhone value)? signUpPhone,
    TResult? Function(_SignUpFirestore value)? siguUpFirestore,
  }) {
    return siguUpFirestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SignUpMail value)? signUpMail,
    TResult Function(_SignUpPhone value)? signUpPhone,
    TResult Function(_SignUpFirestore value)? siguUpFirestore,
    required TResult orElse(),
  }) {
    if (siguUpFirestore != null) {
      return siguUpFirestore(this);
    }
    return orElse();
  }
}

abstract class _SignUpFirestore implements SingUpEvent {
  const factory _SignUpFirestore() = _$SignUpFirestoreImpl;
}

/// @nodoc
mixin _$SingUpState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get userFailureOrUserSuccess =>
      throw _privateConstructorUsedError;

  /// Create a copy of SingUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingUpStateCopyWith<SingUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingUpStateCopyWith<$Res> {
  factory $SingUpStateCopyWith(
          SingUpState value, $Res Function(SingUpState) then) =
      _$SingUpStateCopyWithImpl<$Res, SingUpState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<UserFailure, Unit>> userFailureOrUserSuccess});
}

/// @nodoc
class _$SingUpStateCopyWithImpl<$Res, $Val extends SingUpState>
    implements $SingUpStateCopyWith<$Res> {
  _$SingUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
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
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrUserSuccess: null == userFailureOrUserSuccess
          ? _value.userFailureOrUserSuccess
          : userFailureOrUserSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingUpStateImplCopyWith<$Res>
    implements $SingUpStateCopyWith<$Res> {
  factory _$$SingUpStateImplCopyWith(
          _$SingUpStateImpl value, $Res Function(_$SingUpStateImpl) then) =
      __$$SingUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<UserFailure, Unit>> userFailureOrUserSuccess});
}

/// @nodoc
class __$$SingUpStateImplCopyWithImpl<$Res>
    extends _$SingUpStateCopyWithImpl<$Res, _$SingUpStateImpl>
    implements _$$SingUpStateImplCopyWith<$Res> {
  __$$SingUpStateImplCopyWithImpl(
      _$SingUpStateImpl _value, $Res Function(_$SingUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? userFailureOrUserSuccess = null,
  }) {
    return _then(_$SingUpStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrUserSuccess: null == userFailureOrUserSuccess
          ? _value.userFailureOrUserSuccess
          : userFailureOrUserSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SingUpStateImpl implements _SingUpState {
  const _$SingUpStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.userFailureOrUserSuccess});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<UserFailure, Unit>> userFailureOrUserSuccess;

  @override
  String toString() {
    return 'SingUpState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, userFailureOrUserSuccess: $userFailureOrUserSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingUpStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(
                    other.userFailureOrUserSuccess, userFailureOrUserSuccess) ||
                other.userFailureOrUserSuccess == userFailureOrUserSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password,
      showErrorMessages, isSubmitting, userFailureOrUserSuccess);

  /// Create a copy of SingUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingUpStateImplCopyWith<_$SingUpStateImpl> get copyWith =>
      __$$SingUpStateImplCopyWithImpl<_$SingUpStateImpl>(this, _$identity);
}

abstract class _SingUpState implements SingUpState {
  const factory _SingUpState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<UserFailure, Unit>>
          userFailureOrUserSuccess}) = _$SingUpStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<UserFailure, Unit>> get userFailureOrUserSuccess;

  /// Create a copy of SingUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingUpStateImplCopyWith<_$SingUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
