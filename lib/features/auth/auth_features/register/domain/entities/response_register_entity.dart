import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_register_entity.freezed.dart';
part 'response_register_entity.g.dart';

@freezed
abstract class ResponseRegisterEntity with _$ResponseRegisterEntity {
  const factory ResponseRegisterEntity({
    required int id,
    required String email,
  }) = _ResponseRegisterEntity;

  factory ResponseRegisterEntity.fromJson(Map<String, dynamic> json) =>
      _$ResponseRegisterEntityFromJson(json);
}
