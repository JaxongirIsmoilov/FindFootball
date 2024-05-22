// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyUserSuccessResponseImpl _$$VerifyUserSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyUserSuccessResponseImpl(
      json['userId'] as String,
      json['accessToken'] as String,
      json['refreshToken'] as String,
      json['tokenType'] as String,
      (json['expiresInMinutes'] as num).toInt(),
      json['roles'] as String,
    );

Map<String, dynamic> _$$VerifyUserSuccessResponseImplToJson(
        _$VerifyUserSuccessResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresInMinutes': instance.expiresInMinutes,
      'roles': instance.roles,
    };
