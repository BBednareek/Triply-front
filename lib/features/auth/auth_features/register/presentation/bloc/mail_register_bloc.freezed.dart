// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mail_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MailRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailRegisterEventCopyWith<$Res> {
  factory $MailRegisterEventCopyWith(
          MailRegisterEvent value, $Res Function(MailRegisterEvent) then) =
      _$MailRegisterEventCopyWithImpl<$Res, MailRegisterEvent>;
}

/// @nodoc
class _$MailRegisterEventCopyWithImpl<$Res, $Val extends MailRegisterEvent>
    implements $MailRegisterEventCopyWith<$Res> {
  _$MailRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$MailRegisterEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

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
    return 'MailRegisterEvent.emailChanged(email: $email)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements MailRegisterEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
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
    extends _$MailRegisterEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

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
    return 'MailRegisterEvent.passwordChanged(password: $password)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements MailRegisterEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NicknameChangedImplCopyWith<$Res> {
  factory _$$NicknameChangedImplCopyWith(_$NicknameChangedImpl value,
          $Res Function(_$NicknameChangedImpl) then) =
      __$$NicknameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$NicknameChangedImplCopyWithImpl<$Res>
    extends _$MailRegisterEventCopyWithImpl<$Res, _$NicknameChangedImpl>
    implements _$$NicknameChangedImplCopyWith<$Res> {
  __$$NicknameChangedImplCopyWithImpl(
      _$NicknameChangedImpl _value, $Res Function(_$NicknameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$NicknameChangedImpl(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NicknameChangedImpl implements _NicknameChanged {
  const _$NicknameChangedImpl(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'MailRegisterEvent.nicknameChanged(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameChangedImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      __$$NicknameChangedImplCopyWithImpl<_$NicknameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return nicknameChanged?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return nicknameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class _NicknameChanged implements MailRegisterEvent {
  const factory _NicknameChanged(final String nickname) = _$NicknameChangedImpl;

  String get nickname;
  @JsonKey(ignore: true)
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderChangedImplCopyWith<$Res> {
  factory _$$GenderChangedImplCopyWith(
          _$GenderChangedImpl value, $Res Function(_$GenderChangedImpl) then) =
      __$$GenderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gender});
}

/// @nodoc
class __$$GenderChangedImplCopyWithImpl<$Res>
    extends _$MailRegisterEventCopyWithImpl<$Res, _$GenderChangedImpl>
    implements _$$GenderChangedImplCopyWith<$Res> {
  __$$GenderChangedImplCopyWithImpl(
      _$GenderChangedImpl _value, $Res Function(_$GenderChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$GenderChangedImpl(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenderChangedImpl implements _GenderChanged {
  const _$GenderChangedImpl(this.gender);

  @override
  final int gender;

  @override
  String toString() {
    return 'MailRegisterEvent.genderChanged(gender: $gender)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      __$$GenderChangedImplCopyWithImpl<_$GenderChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return genderChanged?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements MailRegisterEvent {
  const factory _GenderChanged(final int gender) = _$GenderChangedImpl;

  int get gender;
  @JsonKey(ignore: true)
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$MailRegisterEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'MailRegisterEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements MailRegisterEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberCodeChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberCodeChangedImplCopyWith(
          _$PhoneNumberCodeChangedImpl value,
          $Res Function(_$PhoneNumberCodeChangedImpl) then) =
      __$$PhoneNumberCodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumberCode});
}

/// @nodoc
class __$$PhoneNumberCodeChangedImplCopyWithImpl<$Res>
    extends _$MailRegisterEventCopyWithImpl<$Res, _$PhoneNumberCodeChangedImpl>
    implements _$$PhoneNumberCodeChangedImplCopyWith<$Res> {
  __$$PhoneNumberCodeChangedImplCopyWithImpl(
      _$PhoneNumberCodeChangedImpl _value,
      $Res Function(_$PhoneNumberCodeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberCode = null,
  }) {
    return _then(_$PhoneNumberCodeChangedImpl(
      null == phoneNumberCode
          ? _value.phoneNumberCode
          : phoneNumberCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberCodeChangedImpl implements _PhoneNumberCodeChanged {
  const _$PhoneNumberCodeChangedImpl(this.phoneNumberCode);

  @override
  final String phoneNumberCode;

  @override
  String toString() {
    return 'MailRegisterEvent.phoneNumberCodeChanged(phoneNumberCode: $phoneNumberCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberCodeChangedImpl &&
            (identical(other.phoneNumberCode, phoneNumberCode) ||
                other.phoneNumberCode == phoneNumberCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberCodeChangedImplCopyWith<_$PhoneNumberCodeChangedImpl>
      get copyWith => __$$PhoneNumberCodeChangedImplCopyWithImpl<
          _$PhoneNumberCodeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return phoneNumberCodeChanged(phoneNumberCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return phoneNumberCodeChanged?.call(phoneNumberCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (phoneNumberCodeChanged != null) {
      return phoneNumberCodeChanged(phoneNumberCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return phoneNumberCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return phoneNumberCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (phoneNumberCodeChanged != null) {
      return phoneNumberCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberCodeChanged implements MailRegisterEvent {
  const factory _PhoneNumberCodeChanged(final String phoneNumberCode) =
      _$PhoneNumberCodeChangedImpl;

  String get phoneNumberCode;
  @JsonKey(ignore: true)
  _$$PhoneNumberCodeChangedImplCopyWith<_$PhoneNumberCodeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiLoginImplCopyWith<$Res> {
  factory _$$ApiLoginImplCopyWith(
          _$ApiLoginImpl value, $Res Function(_$ApiLoginImpl) then) =
      __$$ApiLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestMailRegisterEntity entity});

  $RequestMailRegisterEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$ApiLoginImplCopyWithImpl<$Res>
    extends _$MailRegisterEventCopyWithImpl<$Res, _$ApiLoginImpl>
    implements _$$ApiLoginImplCopyWith<$Res> {
  __$$ApiLoginImplCopyWithImpl(
      _$ApiLoginImpl _value, $Res Function(_$ApiLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$ApiLoginImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RequestMailRegisterEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestMailRegisterEntityCopyWith<$Res> get entity {
    return $RequestMailRegisterEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$ApiLoginImpl implements _ApiLogin {
  const _$ApiLoginImpl(this.entity);

  @override
  final RequestMailRegisterEntity entity;

  @override
  String toString() {
    return 'MailRegisterEvent.apiLogin(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiLoginImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiLoginImplCopyWith<_$ApiLoginImpl> get copyWith =>
      __$$ApiLoginImplCopyWithImpl<_$ApiLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return apiLogin(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return apiLogin?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (apiLogin != null) {
      return apiLogin(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return apiLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return apiLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (apiLogin != null) {
      return apiLogin(this);
    }
    return orElse();
  }
}

abstract class _ApiLogin implements MailRegisterEvent {
  const factory _ApiLogin(final RequestMailRegisterEntity entity) =
      _$ApiLoginImpl;

  RequestMailRegisterEntity get entity;
  @JsonKey(ignore: true)
  _$$ApiLoginImplCopyWith<_$ApiLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$MailRegisterEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'MailRegisterEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(int gender) genderChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumberCode) phoneNumberCodeChanged,
    required TResult Function(RequestMailRegisterEntity entity) apiLogin,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function(int gender)? genderChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult? Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(int gender)? genderChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumberCode)? phoneNumberCodeChanged,
    TResult Function(RequestMailRegisterEntity entity)? apiLogin,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberCodeChanged value)
        phoneNumberCodeChanged,
    required TResult Function(_ApiLogin value) apiLogin,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult? Function(_ApiLogin value)? apiLogin,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberCodeChanged value)? phoneNumberCodeChanged,
    TResult Function(_ApiLogin value)? apiLogin,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements MailRegisterEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$MailRegisterState {
  EmailValidator get email => throw _privateConstructorUsedError;
  PasswordValidator get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get phoneCode => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get emailError => throw _privateConstructorUsedError;
  String get passwordError => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  bool get buttonAvailable => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailRegisterStateCopyWith<MailRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailRegisterStateCopyWith<$Res> {
  factory $MailRegisterStateCopyWith(
          MailRegisterState value, $Res Function(MailRegisterState) then) =
      _$MailRegisterStateCopyWithImpl<$Res, MailRegisterState>;
  @useResult
  $Res call(
      {EmailValidator email,
      PasswordValidator password,
      String phoneNumber,
      String phoneCode,
      String nickname,
      String errorMessage,
      String emailError,
      String passwordError,
      int gender,
      bool buttonAvailable,
      bool submitted});
}

/// @nodoc
class _$MailRegisterStateCopyWithImpl<$Res, $Val extends MailRegisterState>
    implements $MailRegisterStateCopyWith<$Res> {
  _$MailRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? phoneCode = null,
    Object? nickname = null,
    Object? errorMessage = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? gender = null,
    Object? buttonAvailable = null,
    Object? submitted = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValidator,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      buttonAvailable: null == buttonAvailable
          ? _value.buttonAvailable
          : buttonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MailRegisterStateImplCopyWith<$Res>
    implements $MailRegisterStateCopyWith<$Res> {
  factory _$$MailRegisterStateImplCopyWith(_$MailRegisterStateImpl value,
          $Res Function(_$MailRegisterStateImpl) then) =
      __$$MailRegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailValidator email,
      PasswordValidator password,
      String phoneNumber,
      String phoneCode,
      String nickname,
      String errorMessage,
      String emailError,
      String passwordError,
      int gender,
      bool buttonAvailable,
      bool submitted});
}

/// @nodoc
class __$$MailRegisterStateImplCopyWithImpl<$Res>
    extends _$MailRegisterStateCopyWithImpl<$Res, _$MailRegisterStateImpl>
    implements _$$MailRegisterStateImplCopyWith<$Res> {
  __$$MailRegisterStateImplCopyWithImpl(_$MailRegisterStateImpl _value,
      $Res Function(_$MailRegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? phoneCode = null,
    Object? nickname = null,
    Object? errorMessage = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? gender = null,
    Object? buttonAvailable = null,
    Object? submitted = null,
  }) {
    return _then(_$MailRegisterStateImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValidator,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String,
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      null == buttonAvailable
          ? _value.buttonAvailable
          : buttonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MailRegisterStateImpl implements _MailRegisterState {
  const _$MailRegisterStateImpl(
      [this.email = const EmailValidator.pure(),
      this.password = const PasswordValidator.pure(),
      this.phoneNumber = "",
      this.phoneCode = "",
      this.nickname = "",
      this.errorMessage = "",
      this.emailError = "",
      this.passwordError = "",
      this.gender = 0,
      this.buttonAvailable = false,
      this.submitted = false]);

  @override
  @JsonKey()
  final EmailValidator email;
  @override
  @JsonKey()
  final PasswordValidator password;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String phoneCode;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String emailError;
  @override
  @JsonKey()
  final String passwordError;
  @override
  @JsonKey()
  final int gender;
  @override
  @JsonKey()
  final bool buttonAvailable;
  @override
  @JsonKey()
  final bool submitted;

  @override
  String toString() {
    return 'MailRegisterState(email: $email, password: $password, phoneNumber: $phoneNumber, phoneCode: $phoneCode, nickname: $nickname, errorMessage: $errorMessage, emailError: $emailError, passwordError: $passwordError, gender: $gender, buttonAvailable: $buttonAvailable, submitted: $submitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MailRegisterStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.buttonAvailable, buttonAvailable) ||
                other.buttonAvailable == buttonAvailable) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      phoneNumber,
      phoneCode,
      nickname,
      errorMessage,
      emailError,
      passwordError,
      gender,
      buttonAvailable,
      submitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MailRegisterStateImplCopyWith<_$MailRegisterStateImpl> get copyWith =>
      __$$MailRegisterStateImplCopyWithImpl<_$MailRegisterStateImpl>(
          this, _$identity);
}

abstract class _MailRegisterState implements MailRegisterState {
  const factory _MailRegisterState(
      [final EmailValidator email,
      final PasswordValidator password,
      final String phoneNumber,
      final String phoneCode,
      final String nickname,
      final String errorMessage,
      final String emailError,
      final String passwordError,
      final int gender,
      final bool buttonAvailable,
      final bool submitted]) = _$MailRegisterStateImpl;

  @override
  EmailValidator get email;
  @override
  PasswordValidator get password;
  @override
  String get phoneNumber;
  @override
  String get phoneCode;
  @override
  String get nickname;
  @override
  String get errorMessage;
  @override
  String get emailError;
  @override
  String get passwordError;
  @override
  int get gender;
  @override
  bool get buttonAvailable;
  @override
  bool get submitted;
  @override
  @JsonKey(ignore: true)
  _$$MailRegisterStateImplCopyWith<_$MailRegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
