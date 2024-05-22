part of 'verify_bloc.dart';

abstract class VerifyState extends Equatable {
  @override
  List<Object?> get props => [];
}

class VerifyUserState extends VerifyState {
  final bool isRegistered;
  VerifyUserState(this.isRegistered);

  @override
  List<Object?> get props => [isRegistered];
}

class InitState extends VerifyState{}
