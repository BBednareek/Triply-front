part of 'mail_register_bloc.dart';

@freezed
abstract class MailRegisterState with _$MailRegisterState {
  const factory MailRegisterState([
    @Default("") String email,
    @Default("") String password,
    @Default("") String phoneNumber,
    @Default("") String phoneCode,
    @Default("") String nickname,
    @Default("") String errorMessage,
    @Default(0) int gender,
    @Default(false) bool submitted,
  ]) = _MailRegisterState;
}
