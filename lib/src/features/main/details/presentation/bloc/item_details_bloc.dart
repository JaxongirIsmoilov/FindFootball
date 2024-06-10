import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/features/main/details/domain/usecase/add_favorite_usecase.dart';
import 'package:find_football/src/features/main/details/domain/usecase/remove_from_favorite_usecase.dart';
import 'package:find_football/src/features/main/favotire/presentation/bloc/favorite_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../favotire/data/models/response/saved_stadiums_success.dart';

part 'item_details_event.dart';
part 'item_details_state.dart';

@lazySingleton
class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  ItemDetailsBloc() : super(InitialState()) {
    on<SaveStadiumToFavorite>((event, emit) async {
      await saveStadiumFavorite(event, emit);
    });

    on<RemoveStadiumFromFavorite>((event, emit) async {
      await removeStadiumFromFavorite(event, emit);
    });
  }

  final _addFavoriteUseCase = di<AddFavoriteUseCase>();

  Future<void> saveStadiumFavorite(
      SaveStadiumToFavorite event, Emitter<ItemDetailsState> emit) async {
    await _addFavoriteUseCase.execute(stadiumId: event.stadiumId).then(
          (value) => value.fold(
            (l) {
              emit(ExceptionState(message: l.message),);
            },
            (r) {
              di<FavoriteBloc>().add(FetchAllFavoriteStadiumsEvent());
            },
          ),
        );
  }

  final _removeFavoriteUseCase = di<RemoveFromFavoriteUseCase>();
  Future<void> removeStadiumFromFavorite(
      RemoveStadiumFromFavorite event, Emitter<ItemDetailsState> emit) async {
    await _removeFavoriteUseCase.execute(stadiumId: event.stadiumId).then(
          (value) => value.fold(
            (l) {
          emit(ExceptionState(message: l.message),);
        },
            (r) {
          di<FavoriteBloc>().add(FetchAllFavoriteStadiumsEvent());
        },
      ),
    );
  }
}
