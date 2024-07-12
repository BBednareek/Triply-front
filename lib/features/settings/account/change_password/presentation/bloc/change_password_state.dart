part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState([
    @Default("") String oldPassword,
    @Default(PasswordValidator.pure()) PasswordValidator newPassword,
    @Default(ConfirmPasswordValidator.pure())
    ConfirmPasswordValidator confirmPassword,
    @Default("") String errorMessage,
    @Default(false) bool buttonActive,
    @Default(false) bool posted,
  ]) = _ChangePasswordState;
}
