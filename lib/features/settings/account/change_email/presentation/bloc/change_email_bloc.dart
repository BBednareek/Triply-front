import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_email/domain/entities/change_email_entity.dart';
import 'package:triply/features/settings/account/change_email/domain/usecases/change_email_usecase.dart';

part 'change_email_bloc.freezed.dart';
part 'change_email_event.dart';
part 'change_email_state.dart';

class ChangeEmailBloc extends Bloc<ChangeEmailEvent, ChangeEmailState> {
  final ChangeEmailUsecase changeEmailUsecase;

  ChangeEmailBloc({required this.changeEmailUsecase})
      : super(const ChangeEmailState()) {
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_Submit>(_submit);
  }

  _emailChanged(_EmailChanged event, Emitter<ChangeEmailState> emit) =>
      emit(state.copyWith(email: event.email));

  _passwordChanged(_PasswordChanged event, Emitter<ChangeEmailState> emit) =>
      emit(state.copyWith(password: event.password));

  _submit(_Submit event, Emitter<ChangeEmailState> emit) async {
    final ChangeEmailEntity entity = ChangeEmailEntity(
      email: state.email,
      password: state.password,
    );

    final Either<Failure, void> result =
        await changeEmailUsecase.call(entity: entity);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => emit(state.copyWith(posted: true)),
    );
  }
}
