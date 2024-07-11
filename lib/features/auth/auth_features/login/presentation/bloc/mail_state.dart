part of 'mail_bloc.dart';

@freezed
abstract class MailLoginState with _$MailLoginState {
  const factory MailLoginState([
    @Default("") String email,
    @Default("") String password,
    @Default("") String errorMessage,
    @Default(false) bool posted,
  ]) = _MailLoginState;
}
