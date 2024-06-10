part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
  @override
  List<Object?> get props => [];
}

class FetchAllStadiumsEvent extends HomeEvent{
  final BuildContext context;
  const FetchAllStadiumsEvent({required this.context});
}

class FetchAllFavoriteStadiumsEvent extends HomeEvent{

}
