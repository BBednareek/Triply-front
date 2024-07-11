part of 'mail_bloc.dart';

@freezed
abstract class MailLoginEvent with _$MailLoginEvent {
  const factory MailLoginEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory MailLoginEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  const factory MailLoginEvent.login() = _Login;

  const factory MailLoginEvent.requestResetPassword() = _RequestResetPassword;
}
