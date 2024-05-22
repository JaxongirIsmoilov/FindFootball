part of 'login_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginState extends AuthState{

}

class InitialState extends AuthState{

}

class ExceptionState extends AuthState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
