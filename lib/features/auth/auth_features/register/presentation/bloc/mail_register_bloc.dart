import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/domain/entities/login_mail_entity.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/request_register_entity.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/response_register_entity.dart';
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_mail_api_usecase.dart';
import 'package:triply/features/auth/auth_features/shared/entities/email_validator.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/password_validator.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

part 'mail_register_bloc.freezed.dart';
part 'mail_register_event.dart';
part 'mail_register_state.dart';

class MailRegisterBloc extends Bloc<MailRegisterEvent, MailRegisterState> {
  final RegisterMailApiUsecase registerMailApiUsecase;
  final LoginMailApiUsecase loginMailApiUsecase;

  MailRegisterBloc({
    required this.registerMailApiUsecase,
    required this.loginMailApiUsecase,
  }) : super(const MailRegisterState()) {
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_NicknameChanged>(_nicknameChanged);
    on<_GenderChanged>(_genderChanged);
    on<_PhoneNumberCodeChanged>(_phoneNumberCodeChanged);
    on<_PhoneNumberChanged>(_phoneNumberChanged);
    on<_ApiLogin>(_apiLogin);
    on<_Submit>(_submit);
  }

  void _emailChanged(_EmailChanged event, Emitter<MailRegisterState> emit) {
    final EmailValidator emailValidator = EmailValidator.dirty(event.email);
    String emailError = "";

    if (emailValidator.displayError != null) {
      emailError = emailValidator.displayError!;
    }

    emit(state.copyWith(
      email: emailValidator,
      emailError: emailError,
    ));
  }

  void _passwordChanged(
      _PasswordChanged event, Emitter<MailRegisterState> emit) {
    final PasswordValidator passwordValidator =
        PasswordValidator.dirty(event.password);

    String passwordError = "";

    if (passwordValidator.displayError != null) {
      passwordError = passwordValidator.displayError!;
    }
    emit(state.copyWith(
      password: passwordValidator,
      passwordError: passwordError,
    ));
  }

  void _nicknameChanged(
          _NicknameChanged event, Emitter<MailRegisterState> emit) =>
      emit(state.copyWith(nickname: event.nickname));

  void _genderChanged(_GenderChanged event, Emitter<MailRegisterState> emit) =>
      emit(state.copyWith(gender: event.gender));

  void _phoneNumberChanged(
          _PhoneNumberChanged event, Emitter<MailRegisterState> emit) =>
      emit(state.copyWith(phoneNumber: event.phoneNumber));

  void _phoneNumberCodeChanged(
          _PhoneNumberCodeChanged event, Emitter<MailRegisterState> emit) =>
      emit(state.copyWith(phoneCode: event.phoneNumberCode));

  Future<void> _submit(_Submit event, Emitter<MailRegisterState> emit) async {
    final RequestMailRegisterEntity request = RequestMailRegisterEntity(
      email: state.email.value,
      password: state.password.value,
      phoneNumber: state.phoneNumber,
      phoneNumberCode: state.phoneCode,
      nickname: state.nickname,
      gender: state.gender,
    );

    final Either<Failure, ResponseRegisterEntity> result =
        await registerMailApiUsecase.call(entity: request);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => _ApiLogin(request),
    );
  }

  Future<void> _apiLogin(
      _ApiLogin event, Emitter<MailRegisterState> emit) async {
    final LoginMailEntity loginMailEntity = LoginMailEntity(
      email: state.email.value,
      password: state.password.value,
    );
    final Either<Failure, LoginResultEntity> result =
        await loginMailApiUsecase.call(loginMailEntity);

    result.fold(
        (l) => emit(state.copyWith(errorMessage: l.message)),
        (r) => locator<AuthCubit>().login(
              accessToken: r.accessToken,
              userId: r.userId,
              loginType: "Email",
            ));
  }
}
