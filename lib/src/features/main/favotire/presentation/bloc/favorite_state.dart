part of 'favorite_bloc.dart';

abstract class FavoriteState extends Equatable{

  @override
  List<Object?> get props => [];
}

class InitialState extends FavoriteState{

}

class FetchedAllFavoriteStadiumsState extends FavoriteState{
  final List<SavedStadiumsSuccess> savedStadiums;

  FetchedAllFavoriteStadiumsState({required this.savedStadiums});
  @override
  List<Object?> get props => [savedStadiums];
}

class ExceptionState extends FavoriteState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
