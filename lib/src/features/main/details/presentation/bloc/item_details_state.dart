part of 'item_details_bloc.dart';

abstract class ItemDetailsState extends Equatable{
  @override
  List<Object?> get props => [];
}

class InitialState extends ItemDetailsState {

}

class LikedStadiums extends ItemDetailsState{
  List<SavedStadiumsSuccess> savedStadiumsList;

  LikedStadiums({required this.savedStadiumsList});
}

class ExceptionState extends ItemDetailsState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}
