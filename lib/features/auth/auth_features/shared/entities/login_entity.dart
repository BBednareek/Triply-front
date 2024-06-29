import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result_entity.freezed.dart';
part 'login_result_entity.g.dart';

@freezed
class LoginResultEntity with _$LoginResultEntity {
  const factory LoginResultEntity({
    required String accessToken,
    required String userId,
  }) = _LoginResultEntity;

  factory LoginResultEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResultEntityFromJson(json);
}
