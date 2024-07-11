part of 'change_nickname_bloc.dart';

@freezed
abstract class ChangeNicknameEvent with _$ChangeNicknameEvent {
  const factory ChangeNicknameEvent.nicknameChanged(
      {required String nickname}) = _NicknameChanged;
  const factory ChangeNicknameEvent.submit() = _Submit;
}
