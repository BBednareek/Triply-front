part of 'third_auth_bloc.dart';

abstract class ThirdAuthEvent with _$ThirdAuthEvent {
  const factory ThirdAuthEvent.googleApi(final FirebaseUserEntity user) =
      _GoogleApi;
  const factory ThirdAuthEvent.googleFirebase() = _GoogleFirebase;
  const factory ThirdAuthEvent.appleApi(final FirebaseUserEntity user) =
      _AppleApi;
  const factory ThirdAuthEvent.appleFirebase() = _ApiFirebase;
}
