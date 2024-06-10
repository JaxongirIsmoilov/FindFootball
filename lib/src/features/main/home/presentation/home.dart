import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/widgets/error/global_error.dart';
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart';
import 'package:find_football/src/features/main/widgets/ad_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

import '../../../../core/di/di.dart';
import '../../../../core/utils/dialogs.dart';
import 'bloc/home_bloc.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<AllStadiumsSuccess> allStadiumsSuccess = [];
  late List<SavedStadiumsSuccess> allSavedStadiums = [];
  late BuildContext _ctx;
  String address = '';

  Future<String> getAddressFromLocation(double lat, double long) async {
    List<geocoding.Placemark> placemarks =
        await geocoding.placemarkFromCoordinates(lat, long);

    return "${placemarks.first.country},${placemarks.first.locality},${placemarks.first.street}";
  }

  @override
  void initState() {
    di<HomeBloc>().add(FetchAllStadiumsEvent(context: context));
    di<HomeBloc>().add(FetchAllFavoriteStadiumsEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    return MultiBlocListener(
      listeners: [
        BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              current is FetchedAllFavoriteStadiumsState,
          listener: (context, state) {
            if (state is FetchedAllFavoriteStadiumsState) {
              setState(() {
                allSavedStadiums = state.savedStadiums;
              });
            }
          },
        )
      ],
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeInitialState) {
            return Loaders.loading(context);
          }
          if (state is FetchedAllStadiumsState) {
            allStadiumsSuccess = state.allStadiumsSuccess;
            print("$allStadiumsSuccess +++++++++++++");
          }

          if (state is FetchedAllFavoriteStadiumsState) {
            allSavedStadiums = state.savedStadiums;
          }

          if (state is ExceptionState) {
            return GlobalError(
              message: state.message,
              onPressed: _updateData,
            );
          }

          // return Container();
          return ListView.builder(
            itemCount: allStadiumsSuccess.length,
            itemBuilder: (ctx, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: AdCard(
                allStadiumsSuccess: allStadiumsSuccess[index],
                onClick: () async {
                  address = await getAddressFromLocation(
                    allStadiumsSuccess[index].location.latitude,
                    allStadiumsSuccess[index].location.longitude,
                  );
                  String stadiumId = allStadiumsSuccess[index].id;
                  final isFavorite = allSavedStadiums
                      .any((savedStadium) => savedStadium.id == stadiumId);
                  ctx.pushRoute(
                    ItemDetailsView(
                      allStadiumsSuccess: allStadiumsSuccess[index],
                      address: address,
                      isFavorite: isFavorite,
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _updateData() async {
    Loaders.showLoading(_ctx);
    di<HomeBloc>().add(FetchAllStadiumsEvent(context: _ctx));
  }
}
