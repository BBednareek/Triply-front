import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_register_entity.freezed.dart';
part 'request_register_entity.g.dart';

@freezed
abstract class RequestMailRegisterEntity with _$RequestMailRegisterEntity {
  const factory RequestMailRegisterEntity({
    required String email,
    required String password,
    required String phoneNumber,
    required String phoneNumberCode,
    required String nickname,
    required int gender,
  }) = _RequestMailRegisterEntity;

  factory RequestMailRegisterEntity.fromJson(Map<String, dynamic> json) =>
      _$RequestMailRegisterEntityFromJson(json);
}
