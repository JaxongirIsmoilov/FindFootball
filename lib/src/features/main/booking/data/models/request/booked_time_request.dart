import 'package:freezed_annotation/freezed_annotation.dart';

part 'booked_time_request.freezed.dart';
part 'booked_time_request.g.dart';

@freezed
class BookedTimeRequest with _$BookedTimeRequest {
  const factory BookedTimeRequest(
  String year,
  String month,
  String day,
  int dayOfWeek,
      ) = _BookedTimeRequest;

  factory BookedTimeRequest.fromJson(Map<String, dynamic> json) =>
      _$BookedTimeRequestFromJson(json);
}
