// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileSuccessImpl _$$ProfileSuccessImplFromJson(Map<String, dynamic> json) =>
    _$ProfileSuccessImpl(
      json['id'] as String,
      json['name'] as String,
      json['phoneNumber'] as String,
      json['gender'],
      json['age'],
      json['homeAddressId'],
      json['address'],
      (json['accounts'] as List<dynamic>?)
          ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['images'] as List<dynamic>,
    );

Map<String, dynamic> _$$ProfileSuccessImplToJson(
        _$ProfileSuccessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'age': instance.age,
      'homeAddressId': instance.homeAddressId,
      'address': instance.address,
      'accounts': instance.accounts,
      'images': instance.images,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      json['id'] as String,
      json['userId'] as String,
      (json['roleId'] as num).toInt(),
      ProfileSuccess.fromJson(json['user'] as Map<String, dynamic>),
      Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'roleId': instance.roleId,
      'user': instance.user,
      'role': instance.role,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      (json['id'] as num).toInt(),
      json['type'] as String,
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
