// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_stadium_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookStadiumSuccessImpl _$$BookStadiumSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$BookStadiumSuccessImpl(
      json['id'] as String,
      json['stadiumId'] as String,
      json['accountId'] as String,
      DateTime.parse(json['date'] as String),
      BookedTime.fromJson(json['bookedTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookStadiumSuccessImplToJson(
        _$BookStadiumSuccessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stadiumId': instance.stadiumId,
      'accountId': instance.accountId,
      'date': instance.date.toIso8601String(),
      'bookedTime': instance.bookedTime,
    };

_$BookedTimeImpl _$$BookedTimeImplFromJson(Map<String, dynamic> json) =>
    _$BookedTimeImpl(
      json['startTime'] as String,
      json['endTime'] as String,
    );

Map<String, dynamic> _$$BookedTimeImplToJson(_$BookedTimeImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
