import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_success_response.freezed.dart';
part 'login_success_response.g.dart';

@freezed
class LoginSuccessResponse with _$LoginSuccessResponse {
  const factory LoginSuccessResponse(
      String userId,
      String accessToken,
      String refreshToken,
      String tokenType,
      int expiresInMinutes,
      String roles,
      ) = _LoginSuccessResponse;

  factory LoginSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginSuccessResponseFromJson(json);
}
