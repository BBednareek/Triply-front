import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'router_bloc.freezed.dart';
part 'router_event.dart';
part 'router_state.dart';

@singleton
class RouterBloc extends Bloc<RouterEvent, RouterState> {
  RouterBloc() : super(const _RouterState()) {
    on<_Change>(_onChange);
  }

  _onChange(_Change event, Emitter<RouterState> emit) {
    emit(state.copyWith(changed: !state.changed));
  }
}
