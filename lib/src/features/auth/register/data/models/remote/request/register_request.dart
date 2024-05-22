import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';


@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest(
      String name,
      String login,
      String phoneNumber,
      String password,
      ) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

}
