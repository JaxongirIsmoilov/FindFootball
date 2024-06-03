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

class SelectLocationEvent extends AddAdEvent{
  final double lat;
  final double long;
  const SelectLocationEvent({required this.lat, required this.long});
}
