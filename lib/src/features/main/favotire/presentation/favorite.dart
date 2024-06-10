import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/utils/dialogs.dart';
import 'package:find_football/src/core/widgets/error/global_error.dart';
import 'package:find_football/src/features/main/details/presentation/bloc/item_details_bloc.dart' as details;
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';
import 'package:find_football/src/features/main/favotire/presentation/bloc/favorite_bloc.dart';
import 'package:find_football/src/features/main/favotire/presentation/widgets/ad_card_favorite.dart';
import 'package:flutter/material.dart';
import 'package:find_football/src/features/main/widgets/ad_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

import '../../home/data/models/response/all_stadiums_success.dart';

@RoutePage()
class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  late List<SavedStadiumsSuccess> allSavedStadiumsSuccess = [];
  late BuildContext _ctx;
  late String address = '';

  @override
  void initState() {
    di<FavoriteBloc>().add(FetchAllFavoriteStadiumsEvent());
    _ctx = context;
    super.initState();
  }

  Future<String> getAddressFromLocation(double lat, double long) async {
    List<geocoding.Placemark> placemarks =
    await geocoding.placemarkFromCoordinates(lat, long);

    return "${placemarks.first.country},${placemarks.first.locality},${placemarks.first.street}";
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) {
        if(state is InitialState){
          return Loaders.loading(context);
        }
        if(state is FetchedAllFavoriteStadiumsState){
          allSavedStadiumsSuccess = state.savedStadiums;
        }
        if(state is ExceptionState){
          return GlobalError(message: state.message, onPressed: _updateData);
        }

        return ListView.builder(itemCount: allSavedStadiumsSuccess.length, itemBuilder: (ctx, index) {
          return AdCardFavorite(savedStadiumSuccess: allSavedStadiumsSuccess[index], onClick: () async {
            address = await getAddressFromLocation(allSavedStadiumsSuccess[index].location.latitude, allSavedStadiumsSuccess[index].location.longitude);
          }, onDelete: () { di<details.ItemDetailsBloc>().add(details.RemoveStadiumFromFavorite(allSavedStadiumsSuccess[index].id),); },);
        });
      },
    );
  }
  Future<void> _updateData() async {
    Loaders.showLoading(_ctx);
    di<FavoriteBloc>().add(FetchAllFavoriteStadiumsEvent());
  }
}
