import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_success_response.freezed.dart';
part 'verify_user_success_response.g.dart';

@freezed
class VerifyUserSuccessResponse with _$VerifyUserSuccessResponse {
  const factory VerifyUserSuccessResponse(
  String userId,
  String accessToken,
  String refreshToken,
  String tokenType,
  int expiresInMinutes,
  String roles,
      ) = _VerifyUserSuccessResponse;

  factory VerifyUserSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyUserSuccessResponseFromJson(json);
}
