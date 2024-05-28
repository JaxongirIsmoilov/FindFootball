part of 'add_ad_bloc.dart';

abstract class AddAdEvent extends Equatable {
  const AddAdEvent();
  @override
  List<Object?> get props => [];
}

class AddImageEvent extends AddAdEvent{
 final List<File> images;

  AddImageEvent( {required this.images});
}
