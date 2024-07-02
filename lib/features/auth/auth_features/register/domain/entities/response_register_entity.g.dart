// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_register_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseRegisterEntityImpl _$$ResponseRegisterEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseRegisterEntityImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
    );

Map<String, dynamic> _$$ResponseRegisterEntityImplToJson(
        _$ResponseRegisterEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };
