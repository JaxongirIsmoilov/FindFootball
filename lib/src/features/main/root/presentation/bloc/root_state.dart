part of 'root_bloc.dart';

abstract class RootState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends RootState{

}

class FetchProfileState extends RootState{
  final ProfileSuccess profileSuccess;

  FetchProfileState({required this.profileSuccess});

  @override
  List<Object?> get props => [profileSuccess];
}

class ExceptionState extends RootState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
