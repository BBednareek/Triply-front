part of 'mail_register_bloc.dart';

@freezed
abstract class MailRegisterState with _$MailRegisterState {
  const factory MailRegisterState([
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(PasswordValidator.pure()) PasswordValidator password,
    @Default("") String phoneNumber,
    @Default("") String phoneCode,
    @Default("") String nickname,
    @Default("") String errorMessage,
    @Default("") String emailError,
    @Default("") String passwordError,
    @Default("") int gender,
    @Default(false) bool buttonAvailable,
    @Default(false) bool submitted,
  ]) = _MailRegisterState;
}
