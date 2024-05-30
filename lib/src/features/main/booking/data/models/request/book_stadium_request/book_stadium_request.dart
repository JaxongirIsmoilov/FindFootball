import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_stadium_request.freezed.dart';
part 'book_stadium_request.g.dart';

@freezed
class BookStadiumRequest with _$BookStadiumRequest {
  const factory BookStadiumRequest(
  String accountId,
  String stadiumId,
  String date,
  String startTime,
  String endTime,
      ) = _BookStadiumRequest;

  factory BookStadiumRequest.fromJson(Map<String, dynamic> json) =>
      _$BookStadiumRequestFromJson(json);
}
