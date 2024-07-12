import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/delete_account/domain/usecases/delete_account_usecase.dart';

part 'delete_account_bloc.freezed.dart';
part 'delete_account_event.dart';
part 'delete_account_state.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final DeleteAccountUsecase deleteAccountUsecase;

  DeleteAccountBloc({required this.deleteAccountUsecase})
      : super(const DeleteAccountState()) {
    on<_PasswordChanged>(_passwordChanged);
    on<_Submit>(_submit);
  }

  void _passwordChanged(
          _PasswordChanged event, Emitter<DeleteAccountState> emit) =>
      emit(state.copyWith(password: event.password));

  Future<void> _submit(_Submit event, Emitter<DeleteAccountState> emit) async {
    if (state.password.isEmpty) {
      emit(
          state.copyWith(errorMessage: "Wprowadź hasło żeby móc usunąć konto"));
    }

    final Either<Failure, void> result =
        await deleteAccountUsecase.call(password: state.password);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => emit(state.copyWith(posted: true)),
    );
  }
}
