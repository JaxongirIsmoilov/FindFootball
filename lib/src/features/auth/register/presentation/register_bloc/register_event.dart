part of 'register_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => [];
}

class RegisterEvent extends AuthEvent{
  final BuildContext buildContext;
  final String fullName;
  final String login;
  final String phoneNumber;
  final String password;

  const RegisterEvent({required this.buildContext,required this.fullName,required this.login, required this.phoneNumber, required this.password,});

}
