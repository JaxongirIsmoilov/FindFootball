// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_stadiums_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllStadiumsSuccessImpl _$$AllStadiumsSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$AllStadiumsSuccessImpl(
      json['id'] as String,
      json['ownerAccountId'] as String,
      json['name'] as String,
      Price.fromJson(json['price'] as Map<String, dynamic>),
      Location.fromJson(json['location'] as Map<String, dynamic>),
      json['districtId'] as String,
      json['workStartHour'] as String?,
      json['workEndingHour'] as String?,
      json['district'],
      json['details'] as String,
      Account.fromJson(json['ownerAccount'] as Map<String, dynamic>),
      (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllStadiumsSuccessImplToJson(
        _$AllStadiumsSuccessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerAccountId': instance.ownerAccountId,
      'name': instance.name,
      'price': instance.price,
      'location': instance.location,
      'districtId': instance.districtId,
      'workStartHour': instance.workStartHour,
      'workEndingHour': instance.workEndingHour,
      'district': instance.district,
      'details': instance.details,
      'ownerAccount': instance.ownerAccount,
      'images': instance.images,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      json['id'] as String,
      json['path'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      json['id'] as String,
      json['name'] as String,
      json['phoneNumber'] as String,
      json['gender'],
      json['age'],
      json['homeAddressId'],
      json['address'],
      (json['accounts'] as List<dynamic>)
          .map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'age': instance.age,
      'homeAddressId': instance.homeAddressId,
      'address': instance.address,
      'accounts': instance.accounts,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      json['id'] as String,
      json['userId'] as String,
      (json['roleId'] as num).toInt(),
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['role'],
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'roleId': instance.roleId,
      'user': instance.user,
      'role': instance.role,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      json['currency'] as String,
      (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
