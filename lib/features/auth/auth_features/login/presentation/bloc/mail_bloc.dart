import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/domain/entities/login_mail_entity.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

part 'mail_bloc.freezed.dart';
part 'mail_event.dart';
part 'mail_state.dart';

class MailLoginBloc extends Bloc<MailLoginEvent, MailLoginState> {
  final MailApiUsecase mailApiUsecase;

  MailLoginBloc({required this.mailApiUsecase})
      : super(const MailLoginState()) {
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_Login>(_login);
  }

  void _emailChanged(_EmailChanged event, Emitter<MailLoginState> emit) =>
      emit(state.copyWith(email: event.email));

  void _passwordChanged(_PasswordChanged event, Emitter<MailLoginState> emit) =>
      emit(state.copyWith(password: event.password));

  void _login(_Login event, Emitter<MailLoginState> emit) async {
    final LoginMailEntity loginMailEntity = LoginMailEntity(
      email: state.email,
      password: state.password,
    );
    final Either<Failure, LoginResultEntity> result =
        await mailApiUsecase.call(loginMailEntity);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => locator<AuthCubit>().login(
        accessToken: r.accessToken,
        userId: r.userId,
        loginType: "Email",
      ),
    );
  }
}
