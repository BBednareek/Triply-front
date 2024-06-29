import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_mail_entity.freezed.dart';
part 'login_mail_entity.g.dart';

@freezed
abstract class LoginMailEntity with _$LoginMailEntity {
  const factory LoginMailEntity({
    required String email,
    required String password,
  }) = _LoginMailEntity;

  factory LoginMailEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginMailEntityFromJson(json);
}
