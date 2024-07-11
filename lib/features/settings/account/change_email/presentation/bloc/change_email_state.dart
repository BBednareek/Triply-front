part of 'change_email_bloc.dart';

@freezed
abstract class ChangeEmailState with _$ChangeEmailState {
  const factory ChangeEmailState([
    @Default("") String email,
    @Default("") String password,
    @Default("") String errorMessage,
    @Default(false) bool posted,
  ]) = _ChangeEmailState;
}
