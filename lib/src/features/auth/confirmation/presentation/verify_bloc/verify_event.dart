part of 'verify_bloc.dart';

abstract class VerifyEvent extends Equatable {
  const VerifyEvent();
  @override
  List<Object?> get props => [];
}

class VerifyRegisterEvent extends VerifyEvent{
  final BuildContext buildContext;
  final String otpCode;

  const VerifyRegisterEvent({required this.buildContext, required this.otpCode,});
}