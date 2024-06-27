part of 'test_bloc.dart';

@freezed
abstract class TestState with _$TestState {
  const factory TestState.loading() = _Loading;
  const factory TestState.loaded() = _Loaded;
  const factory TestState.error({required String errorMessage}) = _Error;
}
