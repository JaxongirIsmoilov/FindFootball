part of 'add_ad_bloc.dart';

abstract class AddAdState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddImageState extends AddAdState {

  List<File> images;

  AddImageState({required this.images });

  @override
  List<Object> get props => [images];
}

class InitialState extends AddImageState{
  InitialState({required super.images});
}

class ExceptionState extends AddAdState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
