// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_times_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedTimeSuccessImpl _$$BookedTimeSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedTimeSuccessImpl(
      DateTime.parse(json['date'] as String),
      (json['slotTimes'] as List<dynamic>)
          .map((e) => SlotTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookedTimeSuccessImplToJson(
        _$BookedTimeSuccessImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'slotTimes': instance.slotTimes,
    };

_$SlotTimeImpl _$$SlotTimeImplFromJson(Map<String, dynamic> json) =>
    _$SlotTimeImpl(
      json['startTime'] as String,
      json['endTime'] as String,
    );

Map<String, dynamic> _$$SlotTimeImplToJson(_$SlotTimeImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
