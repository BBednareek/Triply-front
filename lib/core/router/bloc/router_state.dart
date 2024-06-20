part of 'router_bloc.dart';

@freezed
class RouterState with _$RouterState {
  const factory RouterState([
    @Default(false) bool changed,
  ]) = _RouterState;
}
