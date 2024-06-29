import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart';

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

  void _emailChanged(_EmailChanged event, Emitter<MailLoginState> emit) async {}
  void _passwordChanged(
      _PasswordChanged event, Emitter<MailLoginState> emit) async {}
  void _login(_Login event, Emitter<MailLoginState> emit) async {}
}
