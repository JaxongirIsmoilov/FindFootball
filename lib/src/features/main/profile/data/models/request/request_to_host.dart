import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_to_host.freezed.dart';
part 'request_to_host.g.dart';

@freezed
class RequestToHost with _$RequestToHost {
  const factory RequestToHost(
      String userId,
      int roleId,
      ) = _RequestToHost;

  factory RequestToHost.fromJson(Map<String, dynamic> json) =>
      _$RequestToHostFromJson(json);
}
