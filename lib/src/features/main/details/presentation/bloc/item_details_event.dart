part of 'item_details_bloc.dart';

abstract class ItemDetailsEvent extends Equatable{

  const ItemDetailsEvent();

  @override
  List<Object?> get props => [];
}

class SaveStadiumToFavorite extends ItemDetailsEvent{
  String stadiumId;
  SaveStadiumToFavorite(this.stadiumId);
}

class RemoveStadiumFromFavorite extends ItemDetailsEvent{
  String stadiumId;
  RemoveStadiumFromFavorite(this.stadiumId);
}