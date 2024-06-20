part of 'router_bloc.dart';

@freezed
class RouterEvent with _$RouterEvent {
  const factory RouterEvent.change() = _Change;
}
