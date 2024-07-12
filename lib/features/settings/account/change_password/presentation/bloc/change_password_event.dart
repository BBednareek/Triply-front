part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged(
      {required String oldPassword}) = _OldPasswordChanged;

  const factory ChangePasswordEvent.newPasswordChanged(
      {required String newPassword}) = _NewPasswordChanged;

  const factory ChangePasswordEvent.confirmPasswordChanged(
      {required String confirmPassword}) = _ConfirmPasswordChanged;

  const factory ChangePasswordEvent.submit() = _Submit;
}
