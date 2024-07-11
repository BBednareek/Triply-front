import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_email_entity.freezed.dart';
part 'change_email_entity.g.dart';

@freezed
class ChangeEmailEntity with _$ChangeEmailEntity {
  const factory ChangeEmailEntity({
    required String email,
    required String password,
  }) = _ChangeEmailEntity;

  factory ChangeEmailEntity.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailEntityFromJson(json);
}
