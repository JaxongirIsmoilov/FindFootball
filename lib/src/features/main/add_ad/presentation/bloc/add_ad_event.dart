part of 'add_ad_bloc.dart';

abstract class AddAdEvent extends Equatable {
  const AddAdEvent();
  @override
  List<Object?> get props => [];
}

class AddImageEvent extends AddAdEvent{
 final List<File> images;

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
