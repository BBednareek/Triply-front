import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_entity.freezed.dart';
part 'change_password_entity.g.dart';

@freezed
abstract class ChangePasswordEntity with _$ChangePasswordEntity {
  const factory ChangePasswordEntity({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordEntity;

  factory ChangePasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordEntityFromJson(json);
}
