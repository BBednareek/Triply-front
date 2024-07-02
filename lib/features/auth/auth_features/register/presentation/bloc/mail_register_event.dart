part of 'mail_register_bloc.dart';

@freezed
abstract class MailRegisterEvent with _$MailRegisterEvent {
  const factory MailRegisterEvent.emailChanged(final String email) =
      _EmailChanged;
  const factory MailRegisterEvent.passwordChanged(final String password) =
      _PasswordChanged;
  const factory MailRegisterEvent.nicknameChanged(final String nickname) =
      _NicknameChanged;
  const factory MailRegisterEvent.genderChanged(final int gender) =
      _GenderChanged;
  const factory MailRegisterEvent.phoneNumberChanged(final String phoneNumber) =
      _PhoneNumberChanged;
  const factory MailRegisterEvent.phoneNumberCodeChanged(
      final String phoneNumberCode) = _PhoneNumberCodeChanged;
  const factory MailRegisterEvent.apiLogin(
      final RequestMailRegisterEntity entity) = _ApiLogin;
  const factory MailRegisterEvent.submit() = _Submit;
}
