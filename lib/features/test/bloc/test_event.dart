part of 'test_bloc.dart';

@freezed
abstract class TestEvent with _$TestEvent {
  const factory TestEvent.get() = _Get;
}
