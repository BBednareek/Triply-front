import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'internet_bloc.freezed.dart';
part 'internet_event.dart';
part 'internet_state.dart';

@lazySingleton
class InternetBloc extends Bloc<InternetEvent, InternetState> {
  InternetBloc() : super(const InternetState()) {
    on<_NoInternet>(_noInternet);
    on<_LastRoute>(_lastRoute);
    on<_AutoCheck>(_autoCheck);
    on<_Check>(_check);
  }

  _noInternet(_NoInternet event, Emitter<InternetState> emit) =>
      emit(state.copyWith(noInternet: event.status));

  _lastRoute(_LastRoute event, Emitter<InternetState> emit) =>
      emit(state.copyWith(lastRoute: event.lastRoute));

  _autoCheck(_AutoCheck event, Emitter<InternetState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      /// [if Status code == 200, waiting for endpoint]
      emit(state.copyWith(status: FormzSubmissionStatus.success));

      /// [Else]
      await Future.delayed(const Duration(seconds: 5));
      if (!(state.status.isInitial || state.status.isSuccess)) {
        add(const _AutoCheck());
      }
    } catch (e) {
      await Future.delayed(const Duration(seconds: 5));
      if (!(state.status.isInitial || state.status.isSuccess)) {
        add(const _AutoCheck());
      }
    }
  }

  _check(_Check event, Emitter<InternetState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      /// [if Status code == 200, waiting for endpoint]
      emit(state.copyWith(status: FormzSubmissionStatus.success));

      /// [else]
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    } catch (e) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
