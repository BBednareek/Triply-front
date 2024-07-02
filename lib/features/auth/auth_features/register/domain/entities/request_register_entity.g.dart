// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_register_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestMailRegisterEntityImpl _$$RequestMailRegisterEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestMailRegisterEntityImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      phoneNumber: json['phoneNumber'] as String,
      phoneNumberCode: json['phoneNumberCode'] as String,
      nickname: json['nickname'] as String,
      gender: (json['gender'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestMailRegisterEntityImplToJson(
        _$RequestMailRegisterEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberCode': instance.phoneNumberCode,
      'nickname': instance.nickname,
      'gender': instance.gender,
    };
