part of 'internet_bloc.dart';

@freezed
abstract class InternetState with _$InternetState {
  const factory InternetState([
    @Default(false) bool noInternet,
    @Default(null) String? lastRoute,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  ]) = _InternetState;
}
