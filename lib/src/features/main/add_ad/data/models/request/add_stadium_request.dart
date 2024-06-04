import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_stadium_request.freezed.dart';

@freezed
class AddStadiumRequest with _$AddStadiumRequest {
  const factory AddStadiumRequest(
      String ownerAccountId,
      String name,
      String priceCurrency,
      double priceAmount,
      double latitude,
      double longitude,
      String workStartHour,
      String workEndHour,
      String districtId,
      String details,
      List<File> images,
      ) = _AddStadiumRequest;

}
