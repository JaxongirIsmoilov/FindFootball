import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'add_ad_event.dart';
part 'add_ad_state.dart';
@lazySingleton
class AddAdBloc extends Bloc<AddAdEvent, AddImageState> {
  AddAdBloc() : super(InitialState(images: [])) {
    on<AddImageEvent>((event, emit) {
      addImage(event, emit);
    });
    on<SelectLocationEvent>((event, emit) {
      selectLocation(event, emit);
    });
  }

  void selectLocation(SelectLocationEvent event, Emitter<AddAdState> emit){
    emit(SelectedLocationState( selectedLocation: Point(latitude: event.lat, longitude: event.long),),);
  }

  void addImage(AddImageEvent event, Emitter<AddAdState> emitter){
    emit(AddImageState(images: [...event.images]));
  }
}
