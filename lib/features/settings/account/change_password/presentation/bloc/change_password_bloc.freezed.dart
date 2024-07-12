// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult? Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OldPasswordChangedImplCopyWith<$Res> {
  factory _$$OldPasswordChangedImplCopyWith(_$OldPasswordChangedImpl value,
          $Res Function(_$OldPasswordChangedImpl) then) =
      __$$OldPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword});
}

/// @nodoc
class __$$OldPasswordChangedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$OldPasswordChangedImpl>
    implements _$$OldPasswordChangedImplCopyWith<$Res> {
  __$$OldPasswordChangedImplCopyWithImpl(_$OldPasswordChangedImpl _value,
      $Res Function(_$OldPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
  }) {
    return _then(_$OldPasswordChangedImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OldPasswordChangedImpl implements _OldPasswordChanged {
  const _$OldPasswordChangedImpl({required this.oldPassword});

  @override
  final String oldPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.oldPasswordChanged(oldPassword: $oldPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OldPasswordChangedImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OldPasswordChangedImplCopyWith<_$OldPasswordChangedImpl> get copyWith =>
      __$$OldPasswordChangedImplCopyWithImpl<_$OldPasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return oldPasswordChanged(oldPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submit,
  }) {
    return oldPasswordChanged?.call(oldPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(oldPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return oldPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult? Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return oldPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OldPasswordChanged implements ChangePasswordEvent {
  const factory _OldPasswordChanged({required final String oldPassword}) =
      _$OldPasswordChangedImpl;

  String get oldPassword;
  @JsonKey(ignore: true)
  _$$OldPasswordChangedImplCopyWith<_$OldPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewPasswordChangedImplCopyWith<$Res> {
  factory _$$NewPasswordChangedImplCopyWith(_$NewPasswordChangedImpl value,
          $Res Function(_$NewPasswordChangedImpl) then) =
      __$$NewPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class __$$NewPasswordChangedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$NewPasswordChangedImpl>
    implements _$$NewPasswordChangedImplCopyWith<$Res> {
  __$$NewPasswordChangedImplCopyWithImpl(_$NewPasswordChangedImpl _value,
      $Res Function(_$NewPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$NewPasswordChangedImpl(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewPasswordChangedImpl implements _NewPasswordChanged {
  const _$NewPasswordChangedImpl({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordChangedImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordChangedImplCopyWith<_$NewPasswordChangedImpl> get copyWith =>
      __$$NewPasswordChangedImplCopyWithImpl<_$NewPasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return newPasswordChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submit,
  }) {
    return newPasswordChanged?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult? Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChanged implements ChangePasswordEvent {
  const factory _NewPasswordChanged({required final String newPassword}) =
      _$NewPasswordChangedImpl;

  String get newPassword;
  @JsonKey(ignore: true)
  _$$NewPasswordChangedImplCopyWith<_$NewPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl({required this.confirmPassword});

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submit,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult? Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements ChangePasswordEvent {
  const factory _ConfirmPasswordChanged(
      {required final String confirmPassword}) = _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$SubmitImpl>
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
    return 'ChangePasswordEvent.submit()';
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
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
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
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult? Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ChangePasswordEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$ChangePasswordState {
  String get oldPassword => throw _privateConstructorUsedError;
  PasswordValidator get newPassword => throw _privateConstructorUsedError;
  ConfirmPasswordValidator get confirmPassword =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get buttonActive => throw _privateConstructorUsedError;
  bool get posted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {String oldPassword,
      PasswordValidator newPassword,
      ConfirmPasswordValidator confirmPassword,
      String errorMessage,
      bool buttonActive,
      bool posted});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? errorMessage = null,
    Object? buttonActive = null,
    Object? posted = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordValidator,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      buttonActive: null == buttonActive
          ? _value.buttonActive
          : buttonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      posted: null == posted
          ? _value.posted
          : posted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordStateImplCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$ChangePasswordStateImplCopyWith(_$ChangePasswordStateImpl value,
          $Res Function(_$ChangePasswordStateImpl) then) =
      __$$ChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String oldPassword,
      PasswordValidator newPassword,
      ConfirmPasswordValidator confirmPassword,
      String errorMessage,
      bool buttonActive,
      bool posted});
}

/// @nodoc
class __$$ChangePasswordStateImplCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$ChangePasswordStateImpl>
    implements _$$ChangePasswordStateImplCopyWith<$Res> {
  __$$ChangePasswordStateImplCopyWithImpl(_$ChangePasswordStateImpl _value,
      $Res Function(_$ChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? errorMessage = null,
    Object? buttonActive = null,
    Object? posted = null,
  }) {
    return _then(_$ChangePasswordStateImpl(
      null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordValidator,
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == buttonActive
          ? _value.buttonActive
          : buttonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      null == posted
          ? _value.posted
          : posted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangePasswordStateImpl implements _ChangePasswordState {
  const _$ChangePasswordStateImpl(
      [this.oldPassword = "",
      this.newPassword = const PasswordValidator.pure(),
      this.confirmPassword = const ConfirmPasswordValidator.pure(),
      this.errorMessage = "",
      this.buttonActive = false,
      this.posted = false]);

  @override
  @JsonKey()
  final String oldPassword;
  @override
  @JsonKey()
  final PasswordValidator newPassword;
  @override
  @JsonKey()
  final ConfirmPasswordValidator confirmPassword;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool buttonActive;
  @override
  @JsonKey()
  final bool posted;

  @override
  String toString() {
    return 'ChangePasswordState(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, errorMessage: $errorMessage, buttonActive: $buttonActive, posted: $posted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStateImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.buttonActive, buttonActive) ||
                other.buttonActive == buttonActive) &&
            (identical(other.posted, posted) || other.posted == posted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword,
      confirmPassword, errorMessage, buttonActive, posted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      __$$ChangePasswordStateImplCopyWithImpl<_$ChangePasswordStateImpl>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      [final String oldPassword,
      final PasswordValidator newPassword,
      final ConfirmPasswordValidator confirmPassword,
      final String errorMessage,
      final bool buttonActive,
      final bool posted]) = _$ChangePasswordStateImpl;

  @override
  String get oldPassword;
  @override
  PasswordValidator get newPassword;
  @override
  ConfirmPasswordValidator get confirmPassword;
  @override
  String get errorMessage;
  @override
  bool get buttonActive;
  @override
  bool get posted;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
