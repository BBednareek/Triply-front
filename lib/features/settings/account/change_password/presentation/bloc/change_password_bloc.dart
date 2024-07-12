import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/shared/entities/password_validator.dart';
import 'package:triply/features/settings/account/change_password/domain/entities/change_password_entity.dart';
import 'package:triply/features/settings/account/change_password/domain/entities/confirm_password_validator.dart';
import 'package:triply/features/settings/account/change_password/domain/usecases/change_password_usecase.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUsecase changePasswordUsecase;

  ChangePasswordBloc({required this.changePasswordUsecase})
      : super(const ChangePasswordState()) {
    on<_OldPasswordChanged>(_oldPasswordChanged);
    on<_NewPasswordChanged>(_newPasswordChanged);
    on<_ConfirmPasswordChanged>(_confirmPasswordChanged);
    on<_Submit>(_submit);
  }

  void _oldPasswordChanged(
          _OldPasswordChanged event, Emitter<ChangePasswordState> emit) =>
      emit(state.copyWith(
        oldPassword: event.oldPassword,
        buttonActive: state.confirmPassword.value.isNotEmpty &&
            state.oldPassword.isNotEmpty &&
            state.newPassword.value.isNotEmpty &&
            state.confirmPassword.isValid &&
            state.newPassword.isValid,
      ));

  void _newPasswordChanged(
          _NewPasswordChanged event, Emitter<ChangePasswordState> emit) =>
      emit(
        state.copyWith(
          newPassword: PasswordValidator.dirty(event.newPassword),
          buttonActive: state.confirmPassword.value.isNotEmpty &&
              state.oldPassword.isNotEmpty &&
              state.newPassword.value.isNotEmpty &&
              state.confirmPassword.isValid &&
              state.newPassword.isValid,
        ),
      );

  void _confirmPasswordChanged(
          _ConfirmPasswordChanged event, Emitter<ChangePasswordState> emit) =>
      emit(
        state.copyWith(
          confirmPassword: ConfirmPasswordValidator.dirty(
            value: event.confirmPassword,
            password: state.newPassword.value,
          ),
          buttonActive: state.confirmPassword.value.isNotEmpty &&
              state.oldPassword.isNotEmpty &&
              state.newPassword.value.isNotEmpty &&
              state.confirmPassword.isValid &&
              state.newPassword.isValid,
        ),
      );

  Future<void> _submit(_Submit event, Emitter<ChangePasswordState> emit) async {
    final ChangePasswordEntity entity = ChangePasswordEntity(
      oldPassword: state.oldPassword,
      newPassword: state.newPassword.value,
    );

    final Either<Failure, void> result =
        await changePasswordUsecase.call(entity: entity);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => emit(state.copyWith(posted: true)),
    );
  }
}
