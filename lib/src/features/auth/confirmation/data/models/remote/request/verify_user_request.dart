import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_request.freezed.dart';
part 'verify_user_request.g.dart';

@freezed
class VerifyUserRequest with _$VerifyUserRequest {

  const factory VerifyUserRequest(
      String otp,
      ) = _VerifyUserRequest;

  factory VerifyUserRequest.fromJson(Map<String, dynamic> json) => _$VerifyUserRequestFromJson(json);
}
