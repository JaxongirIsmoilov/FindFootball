// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_times_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedTimeSuccessImpl _$$BookedTimeSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedTimeSuccessImpl(
      DateTime.parse(json['date'] as String),
      json['startTime'] as String,
      json['endTime'] as String,
    );

Map<String, dynamic> _$$BookedTimeSuccessImplToJson(
        _$BookedTimeSuccessImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
