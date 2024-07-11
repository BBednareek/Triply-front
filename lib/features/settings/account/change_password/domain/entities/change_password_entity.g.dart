// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordEntityImpl _$$ChangePasswordEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordEntityImpl(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$$ChangePasswordEntityImplToJson(
        _$ChangePasswordEntityImpl instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
