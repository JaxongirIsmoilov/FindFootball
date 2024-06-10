import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart';
import 'package:find_football/src/features/main/home/domain/usecase/fetch_all_stadiums_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/di.dart';
import '../../../favotire/domain/usecase/get_all_favorite.dart';

part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<FetchAllStadiumsEvent>((event, emit) async {
      await _fetchData(event, emit);
    });

    on<FetchAllFavoriteStadiumsEvent>((event, emit) async {
      await getAllFavorite(event, emit);
    });
  }


  final _getAllFavoriteUseCase = di<GetAllFavoriteUseCase>();

  Future<void> getAllFavorite(
      FetchAllFavoriteStadiumsEvent event, Emitter<HomeState> emit) async {
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

  final _fetchAllStadiumsUseCase = di<FetchAllStadiumsUseCase>();

  Future<void> _fetchData(
      FetchAllStadiumsEvent event, Emitter<HomeState> emit) async {
    await _fetchAllStadiumsUseCase.execute().then(
          (value) => value.fold(
            (l) {
              emit(ExceptionState(message: l.message));
              //event.context.pushRoute(HomeView());
            },
            (r) {
              emit(FetchedAllStadiumsState(allStadiumsSuccess: r));
            },
          ),
        );
    // ).whenComplete(() =>  event.context.pushRoute(HomeView()),);
  }
}
