import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_nickname/domain/usecases/change_nickname_usecase.dart';

part 'change_nickname_bloc.freezed.dart';
part 'change_nickname_event.dart';
part 'change_nickname_state.dart';

class ChangeNicknameBloc
    extends Bloc<ChangeNicknameEvent, ChangeNicknameState> {
  final ChangeNicknameUsecase changeNicknameUsecase;

  ChangeNicknameBloc({required this.changeNicknameUsecase})
      : super(const ChangeNicknameState()) {
    on<_NicknameChanged>(_nicknameChanged);
    on<_Submit>(_submit);
  }

  void _nicknameChanged(
          _NicknameChanged event, Emitter<ChangeNicknameState> emit) =>
      emit(state.copyWith(nickname: event.nickname));

  Future<void> _submit(_Submit event, Emitter<ChangeNicknameState> emit) async {
    final Either<Failure, void> result =
        await changeNicknameUsecase.call(nickname: state.nickname);

    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.message)),
      (r) => emit(state.copyWith(posted: true)),
    );
  }
}
