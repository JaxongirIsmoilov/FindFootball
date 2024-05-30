import 'package:freezed_annotation/freezed_annotation.dart';

part 'booked_times_success.freezed.dart';
part 'booked_times_success.g.dart';

@freezed
class BookedTimeSuccess with _$BookedTimeSuccess {
  const factory BookedTimeSuccess(
  DateTime date,
  String startTime,
  String endTime,
      ) = _BookedTimeSuccess;

  factory BookedTimeSuccess.fromJson(Map<String, dynamic> json) =>
      _$BookedTimeSuccessFromJson(json);
}
