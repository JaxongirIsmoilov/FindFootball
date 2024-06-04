part of 'add_ad_bloc.dart';

abstract class AddAdEvent extends Equatable {
  const AddAdEvent();
  @override
  List<Object?> get props => [];
}

class AddAdButtonEvent extends AddAdEvent{
  final BuildContext context;
  final String name;
  final String priceCurrency;
  final double priceAmount;
  final double locationLatitude;
  final double locationLongitude;
  final String workStartHour;
  final String workEndHour;
  final String districtId;
  final String details;
  final List<XFile> images;

  const AddAdButtonEvent(
      {
        required this.context,
        required this.name,
      required this.priceCurrency,
      required this.priceAmount,
      required this.locationLatitude,
      required this.locationLongitude,
      required this.workStartHour,
      required this.workEndHour,
      required this.districtId,
      required this.details,
      required this.images});


}

class AddImageEvent extends AddAdEvent{
 final List<XFile> images;

  const AddImageEvent( {required this.images});
}

class GetAllDistrictsEvent extends AddAdEvent{
  final BuildContext context;
  GetAllDistrictsEvent(this.context);
}

class SelectDistrictEvent extends AddAdEvent{
  final DistrictSuccess selectedDistrict;
  const SelectDistrictEvent(this.selectedDistrict);
}

class SelectLocationEvent extends AddAdEvent{
  final double lat;
  final double long;
  const SelectLocationEvent({required this.lat, required this.long});
}
