import 'package:image_picker/image_picker.dart';

class StadiumRequest {
  final String ownerAccountId;
  final String name;
  final String priceCurrency;
  final double priceAmount;
  final double latitude;
  final double longitude;
  final String workStartHour;
  final String workEndingHour;
  final String districtId;
  final String details;
  final List<XFile> images;

  StadiumRequest({
    required this.name,
    required this.images,
    required this.ownerAccountId,
    required this.longitude,
    required this.latitude,
    required this.details,
    required this.workEndingHour,
    required this.districtId,
    required this.priceAmount,
    required this.priceCurrency,
    required this.workStartHour,
  });
}
