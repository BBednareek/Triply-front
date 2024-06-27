import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/test/datasource/usecase.dart';

part 'test_bloc.freezed.dart';
part 'test_event.dart';
part 'test_state.dart';

@lazySingleton
class TestBloc extends Bloc<TestEvent, TestState> {
  final Usecase usecase;
  TestBloc({required this.usecase}) : super(const TestState.loading()) {
    on<_Get>(_get);
  }

  _get(_Get event, Emitter<TestState> emit) async {
    final Either<Failure, Map<String, dynamic>> result = await usecase.call();

    result.fold(
      (l) => emit(_Error(errorMessage: l.message)),
      (r) => emit(const _Loaded()),
    );
  }
}
