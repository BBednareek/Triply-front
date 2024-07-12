part of 'delete_account_bloc.dart';

@freezed
abstract class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState([
    @Default("") String password,
    @Default("") String errorMessage,
    @Default(false) bool posted,
  ]) = _DeleteAccountState;
}
