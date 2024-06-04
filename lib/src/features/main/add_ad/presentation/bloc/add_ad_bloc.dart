import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/core/utils/pop_up_modal.dart';
import 'package:find_football/src/features/main/add_ad/data/models/request/stadium_request.dart';
import 'package:find_football/src/features/main/add_ad/domain/usecase/add_ad_usecase.dart';
import 'package:find_football/src/features/main/add_ad/domain/usecase/get_districts_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../../core/di/di.dart';
import '../../data/models/response/district_success.dart';

part 'add_ad_event.dart';
part 'add_ad_state.dart';

@lazySingleton
class AddAdBloc extends Bloc<AddAdEvent, AddAdState> {
  AddAdBloc() : super(InitialState()) {
    on<AddImageEvent>((event, emit) {
      addImage(event, emit);
    });
    on<SelectLocationEvent>((event, emit) {
      selectLocation(event, emit);
    });
    on<GetAllDistrictsEvent>((event, emit) async {
      await getAllDistricts(event, emit);
    });

    on<SelectDistrictEvent>((event, emit) {
      selectDistrict(event, emit);
    });

    on<AddAdButtonEvent>((event, emit) async {
      await addAnnouncement(event, emit);
    });
  }

  final _addAdUseCase = di<AddAdUseCase>();

  Future<void> addAnnouncement(
      AddAdButtonEvent event, Emitter<AddAdState> emit) async {
    await _addAdUseCase
        .execute(
          context: event.context,
          stadiumRequest: StadiumRequest(
            name: event.name,
            images: event.images,
            ownerAccountId: await HiveService.getAccountId(),
            longitude: event.locationLongitude,
            latitude: event.locationLatitude,
            details: event.details,
            workEndingHour: event.workEndHour,
            districtId: event.districtId,
            priceAmount: event.priceAmount,
            priceCurrency: event.priceCurrency,
            workStartHour: event.workStartHour,
          ),
        )
        .then(
          (value) => value.fold(
            (l) {
              popUp(event.context, error: l.message);
              emit(ExceptionState(message: l.message));
            },
            (r) {
              event.context.replaceRoute(HomeView());
            },
          ),
        );
  }

  void selectDistrict(SelectDistrictEvent event, Emitter<AddAdState> emit) {
    emit(InitialState());
    emit(
      SelectedDistrictState(selectedDistrict: event.selectedDistrict),
    );
  }

  final _fetchAllDistrictsUseCase = di<GetDistrictsUseCase>();

  Future<void> getAllDistricts(
      GetAllDistrictsEvent event, Emitter<AddAdState> emit) async {
    await _fetchAllDistrictsUseCase.execute(context: event.context).then(
          (value) => value.fold(
            (l) {
              popUp(event.context, error: l.message);
              emit(ExceptionState(message: l.message));
            },
            (r) {
              emit(
                GetAllDistrictsState(districts: r),
              );
            },
          ),
        );
  }

  void selectLocation(SelectLocationEvent event, Emitter<AddAdState> emit) {
    emit(
      SelectedLocationState(
        selectedLocation: Point(latitude: event.lat, longitude: event.long),
      ),
    );
  }

  void addImage(AddImageEvent event, Emitter<AddAdState> emitter) {
    emit(AddImageState(images: [...event.images]));
  }
}
