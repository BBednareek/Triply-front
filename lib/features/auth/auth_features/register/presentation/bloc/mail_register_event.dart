part of 'mail_register_bloc.dart';

@freezed
abstract class MailRegisterEvent with _$MailRegisterEvent {
  const factory MailRegisterEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory MailRegisterEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  const factory MailRegisterEvent.nicknameChanged({required String nickname}) =
      _NicknameChanged;
  const factory MailRegisterEvent.genderChanged({required int gender}) =
      _GenderChanged;
  const factory MailRegisterEvent.phoneNumberChanged(
      {required String phoneNumber}) = _PhoneNumberChanged;
  const factory MailRegisterEvent.phoneNumberCodeChanged(
      {required String phoneNumberCode}) = _PhoneNumberCodeChanged;
  const factory MailRegisterEvent.apiLogin(
      {required final RequestMailRegisterEntity entity}) = _ApiLogin;
  const factory MailRegisterEvent.submit() = _Submit;
}
