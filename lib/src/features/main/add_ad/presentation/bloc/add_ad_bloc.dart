import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/utils/pop_up_modal.dart';
import 'package:find_football/src/features/main/add_ad/domain/usecase/get_districts_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  }

  void selectDistrict(SelectDistrictEvent event, Emitter<AddAdState> emit){
    emit(SelectedDistrictState(selectedDistrict: event.selectedDistrict),);
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
              emit(GetAllDistrictsState(districts: r),);
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
