import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_success.freezed.dart';
part 'district_success.g.dart';

@freezed
class DistrictSuccess with _$DistrictSuccess {
  const factory DistrictSuccess(
  String id,
  String cityId,
  String name,
  dynamic city,
      ) = _DistrictSuccess;

  factory DistrictSuccess.fromJson(Map<String, dynamic> json) =>
      _$DistrictSuccessFromJson(json);
}
