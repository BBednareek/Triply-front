part of 'mail_bloc.dart';

@freezed
abstract class MailLoginEvent with _MailLoginEvent {
  const factory MailLoginEvent.emailChanged(String email) = _EmailChanged;
  const factory MailLoginEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory MailLoginEvent.login() = _Login;
}
