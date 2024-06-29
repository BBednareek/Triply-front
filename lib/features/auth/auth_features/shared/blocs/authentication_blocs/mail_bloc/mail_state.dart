part of 'mail_bloc.dart';

@freezed
abstract class MailLoginState with _$MailLoginState {
  const factory MailLoginState([
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default("") String errorMessage,
  ]) = _MailLoginState;
}
