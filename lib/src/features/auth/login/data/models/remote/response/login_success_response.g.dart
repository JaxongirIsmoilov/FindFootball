// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginSuccessResponseImpl _$$LoginSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginSuccessResponseImpl(
      json['userId'] as String,
      json['accessToken'] as String,
      json['refreshToken'] as String,
      json['tokenType'] as String,
      (json['expiresInMinutes'] as num).toInt(),
      json['roles'] as String,
    );

Map<String, dynamic> _$$LoginSuccessResponseImplToJson(
        _$LoginSuccessResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresInMinutes': instance.expiresInMinutes,
      'roles': instance.roles,
    };
