part of 'delete_account_bloc.dart';

@freezed
abstract class DeleteAccountEvent with _$DeleteAccountEvent {
  const factory DeleteAccountEvent.passwordChanged({required String password}) =
      _PasswordChanged;

  const factory DeleteAccountEvent.submit() = _Submit;
}
