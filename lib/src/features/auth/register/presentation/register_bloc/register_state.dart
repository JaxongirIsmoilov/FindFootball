part of 'register_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class RegisterState extends AuthState {
  final bool isNoRegister;
  RegisterState({required this.isNoRegister});
  @override
  List<Object> get props => [isNoRegister];
}

class InitialState extends AuthState{

}

class ExceptionState extends AuthState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}


