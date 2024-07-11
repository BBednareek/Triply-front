import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/domain/entities/login_mail_entity.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/forgot_password_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

part 'mail_bloc.freezed.dart';
part 'mail_event.dart';
part 'mail_state.dart';

class MailLoginBloc extends Bloc<MailLoginEvent, MailLoginState> {
  final LoginMailApiUsecase mailApiUsecase;
  final ForgotPasswordUsecase forgotPasswordUsecase;

  MailLoginBloc({
    required this.mailApiUsecase,
    required this.forgotPasswordUsecase,
  }) : super(const MailLoginState()) {
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_RequestResetPassword>(_requestResetPassword);
    on<_Login>(_login);
  }

  void _emailChanged(_EmailChanged event, Emitter<MailLoginState> emit) =>
      emit(state.copyWith(email: event.email));

  void _passwordChanged(_PasswordChanged event, Emitter<MailLoginState> emit) =>
      emit(state.copyWith(password: event.password));

  Future<void> _login(_Login event, Emitter<MailLoginState> emit) async {
    final LoginMailEntity loginMailEntity = LoginMailEntity(
      email: state.email,
      password: state.password,
    );

    final Either<Failure, LoginResultEntity> result =
        await mailApiUsecase.call(entity: loginMailEntity);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => locator<AuthCubit>().login(
        accessToken: r.accessToken,
        userId: r.userId,
        loginType: "Email",
      ),
    );
  }

  Future<void> _requestResetPassword(
      _RequestResetPassword event, Emitter<MailLoginState> emit) async {
    final Either<Failure, bool> result =
        await forgotPasswordUsecase.call(email: state.email);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => emit(state.copyWith(posted: true)),
    );
  }
}
