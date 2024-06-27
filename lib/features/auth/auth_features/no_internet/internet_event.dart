part of 'internet_bloc.dart';

@freezed
abstract class InternetEvent with _$InternetEvent {
  const factory InternetEvent.autoCheck() = _AutoCheck;
  const factory InternetEvent.check() = _Check;
  const factory InternetEvent.lastRoute(final String lastRoute) = _LastRoute;
  const factory InternetEvent.noInternet(final bool status) = _NoInternet;
}
