part of 'change_email_bloc.dart';

@freezed
abstract class ChangeEmailEvent with _$ChangeEmailEvent {
  const factory ChangeEmailEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory ChangeEmailEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  const factory ChangeEmailEvent.submit() = _Submit;
}
