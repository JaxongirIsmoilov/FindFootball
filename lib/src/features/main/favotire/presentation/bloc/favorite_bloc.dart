import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';
import 'package:find_football/src/features/main/favotire/domain/usecase/get_all_favorite.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/di.dart';
import '../../../home/data/models/response/all_stadiums_success.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
@lazySingleton
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(InitialState()) {
    on<FetchAllFavoriteStadiumsEvent>((event, emit) async {
      await getAllFavorite(event, emit);
    });
  }

  final _getAllFavoriteUseCase = di<GetAllFavoriteUseCase>();

  Future<void> getAllFavorite(
      FetchAllFavoriteStadiumsEvent event, Emitter<FavoriteState> emit) async {
    await _getAllFavoriteUseCase.execute().then(
          (value) => value.fold(
            (l) {
              emit(ExceptionState(message: l.message),);
            },
            (r) {
              emit(FetchedAllFavoriteStadiumsState(savedStadiums: r),);
            },
          ),
        );
  }
}
