// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_time_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedTimeRequestImpl _$$BookedTimeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedTimeRequestImpl(
      json['year'] as String,
      json['month'] as String,
      json['day'] as String,
      (json['dayOfWeek'] as num).toInt(),
    );

Map<String, dynamic> _$$BookedTimeRequestImplToJson(
        _$BookedTimeRequestImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'dayOfWeek': instance.dayOfWeek,
    };
