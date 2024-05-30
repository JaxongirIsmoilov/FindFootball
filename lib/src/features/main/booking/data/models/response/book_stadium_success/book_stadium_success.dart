import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_stadium_success.freezed.dart';
part 'book_stadium_success.g.dart';

@freezed
class BookStadiumSuccess with _$BookStadiumSuccess {
  const factory BookStadiumSuccess(
  String id,
  String stadiumId,
  String accountId,
  DateTime date,
  BookedTime bookedTime,
      ) = _BookStadiumSuccess;

  factory BookStadiumSuccess.fromJson(Map<String, dynamic> json) =>
      _$BookStadiumSuccessFromJson(json);
}

@freezed
class BookedTime with _$BookedTime {
  const factory BookedTime(
  String startTime,
  String endTime,
      ) = _BookedTime;

  factory BookedTime.fromJson(Map<String, dynamic> json) =>
      _$BookedTimeFromJson(json);
}
