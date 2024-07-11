part of 'third_auth_bloc.dart';

@freezed
abstract class ThirdAuthEvent with _$ThirdAuthEvent {
  const factory ThirdAuthEvent.googleApi(
      {required final FirebaseUserEntity user}) = _GoogleApi;
  const factory ThirdAuthEvent.googleFirebase() = _GoogleFirebase;
  const factory ThirdAuthEvent.appleApi(
      {required final FirebaseUserEntity user}) = _AppleApi;
  const factory ThirdAuthEvent.appleFirebase() = _AppleFirebase;
}
