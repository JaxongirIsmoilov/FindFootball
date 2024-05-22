// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseImpl _$$RegisterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseImpl(
      json['token'] as String,
      (json['otpLifetimeInSeconds'] as num).toInt(),
      (json['otpLength'] as num).toInt(),
    );

Map<String, dynamic> _$$RegisterResponseImplToJson(
        _$RegisterResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'otpLifetimeInSeconds': instance.otpLifetimeInSeconds,
      'otpLength': instance.otpLength,
    };
