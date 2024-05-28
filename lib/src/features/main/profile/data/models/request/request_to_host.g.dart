// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_to_host.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestToHostImpl _$$RequestToHostImplFromJson(Map<String, dynamic> json) =>
    _$RequestToHostImpl(
      json['userId'] as String,
      (json['roleId'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestToHostImplToJson(_$RequestToHostImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roleId': instance.roleId,
    };
