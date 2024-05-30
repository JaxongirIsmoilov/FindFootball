// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_stadium_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookStadiumRequestImpl _$$BookStadiumRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BookStadiumRequestImpl(
      json['accountId'] as String,
      json['stadiumId'] as String,
      json['date'] as String,
      json['startTime'] as String,
      json['endTime'] as String,
    );

Map<String, dynamic> _$$BookStadiumRequestImplToJson(
        _$BookStadiumRequestImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'stadiumId': instance.stadiumId,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
