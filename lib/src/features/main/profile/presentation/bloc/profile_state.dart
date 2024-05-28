part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProfileInitial extends ProfileState{

}

class ProfileHostRequest extends ProfileState{
  String id;
  ProfileHostRequest({required this.id});
}

class ExceptionState extends ProfileState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
