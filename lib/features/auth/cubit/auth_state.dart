part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authorized() = _Authorized;
  const factory AuthState.unAuthorized() = _Unauthorized;
  const factory AuthState.loading() = _Loading;
}
