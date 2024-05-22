part of 'login_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent{
  final BuildContext buildContext;
  final String login;
  final String password;
  const LoginEvent({required this.buildContext, required this.login, required this.password});

}
