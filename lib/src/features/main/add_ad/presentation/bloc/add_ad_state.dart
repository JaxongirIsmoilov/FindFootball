part of 'add_ad_bloc.dart';

abstract class AddAdState extends Equatable {
  List<XFile> images = [];
  @override
  List<Object?> get props => [images];
}

class AddImageState extends AddAdState {

  List<XFile> images;

  AddImageState({required this.images });

  @override
  List<Object> get props => [images];
}

class SelectedLocationState extends AddAdState{
  Point selectedLocation;

  SelectedLocationState({ required this.selectedLocation});
  @override
  List<Object> get props => [selectedLocation];
}

class SelectedDistrictState extends AddAdState {
  DistrictSuccess selectedDistrict;

  SelectedDistrictState({required this.selectedDistrict});
}

class GetAllDistrictsState extends AddAdState{
  List<DistrictSuccess> districts;
  GetAllDistrictsState({required this.districts});
  @override
  List<Object> get props => [districts];
}

class AddAdButtonState extends AddAdState{

}

class InitialState extends AddAdState{
}

class ExceptionState extends AddAdState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
