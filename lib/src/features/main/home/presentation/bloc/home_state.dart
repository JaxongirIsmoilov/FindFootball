part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState{

}

class FetchedAllStadiumsState extends HomeState{

  final List<AllStadiumsSuccess> allStadiumsSuccess;

  FetchedAllStadiumsState({required this.allStadiumsSuccess });

  @override
  List<Object?> get props => [allStadiumsSuccess];
}

class FetchedAllFavoriteStadiumsState extends HomeState{
  final List<SavedStadiumsSuccess> savedStadiums;

  FetchedAllFavoriteStadiumsState({required this.savedStadiums});
  @override
  List<Object?> get props => [savedStadiums];
}

class ExceptionState extends HomeState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}