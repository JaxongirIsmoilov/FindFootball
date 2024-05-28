import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'add_ad_event.dart';
part 'add_ad_state.dart';
@lazySingleton
class AddAdBloc extends Bloc<AddAdEvent, AddImageState> {
  AddAdBloc() : super(InitialState(images: [])) {
    on<AddImageEvent>((event, emit) {
      addImage(event, emit);
    });
  }


  void addImage(AddImageEvent event, Emitter<AddAdState> emitter){
    emit(AddImageState(images: [...event.images]));
  }
}
