part of 'change_nickname_bloc.dart';

@freezed
abstract class ChangeNicknameState with _$ChangeNicknameState {
  const factory ChangeNicknameState([
    @Default("") String nickname,
    @Default("") String errorMessage,
    @Default(false) bool posted,
  ]) = _ChangeNicknameState;
}
