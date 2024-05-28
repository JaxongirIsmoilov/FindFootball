part of 'root_bloc.dart';

abstract class RootEvent extends Equatable {
  const RootEvent();
  @override
  List<Object?> get props => [];
}

class LogOutEvent extends RootEvent{

}

class FetchAllProfileData extends RootEvent{
  final BuildContext context;
  const FetchAllProfileData(this.context);
  @override
  List<Object?> get props => [context];
}
