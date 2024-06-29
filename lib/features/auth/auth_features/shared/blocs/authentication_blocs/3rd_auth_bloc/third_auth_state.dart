part of 'third_auth_bloc.dart';

abstract class ThirdAuthState with _$ThirdAuthState {
  const factory ThirdAuthState.initial() = _Initial;
  const factory ThirdAuthState.loading() = _Loading;
  const factory ThirdAuthState.success() = _Success;
  const factory ThirdAuthState.failure(final String message) = _Failure;
}
