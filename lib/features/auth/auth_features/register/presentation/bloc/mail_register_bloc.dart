import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/request_register_entity.dart';

part 'mail_register_bloc.freezed.dart';
part 'mail_register_event.dart';
part 'mail_register_state.dart';

class MailRegisterBloc extends Bloc<MailRegisterEvent, MailRegisterState> {
  MailRegisterBloc() : super(const MailRegisterState()) {
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_NicknameChanged>(_nicknameChanged);
    on<_GenderChanged>(_genderChanged);
    on<_PhoneNumberCodeChanged>(_phoneNumberCodeChanged);
    on<_PhoneNumberChanged>(_phoneNumberChanged);
    on<_Submit>(_submit);
  }

  void _emailChanged(_EmailChanged event, Emitter<MailRegisterState> emit) =>
      emit(state.copyWith(email: event.email));

  void _passwordChanged(
          _PasswordChanged event, Emitter<MailRegisterState> emit) =>
      emit(state.copyWith(password: event.password));

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

  void _submit(_Submit event, Emitter<MailRegisterState> emit) async {
    final RequestMailRegisterEntity request = RequestMailRegisterEntity(
      email: state.email,
      password: state.password,
      phoneNumber: state.phoneNumber,
      phoneNumberCode: state.phoneCode,
      nickname: state.nickname,
      gender: state.gender,
    );
  }
}
