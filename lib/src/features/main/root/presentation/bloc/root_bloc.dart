import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/main/root/domain/usecase/root_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../profile/data/models/response/profile_success.dart';
import '../../../profile/domain/usecase/profile_use_case.dart';

part 'root_event.dart';
part 'root_state.dart';
@lazySingleton
class RootBloc extends Bloc<RootEvent, RootState> {
  RootBloc() : super(InitialState()) {
    on<LogOutEvent>((event, emit) async {
        await logOut(event, emit);
    });
    on<FetchAllProfileData>((event, emit) async {
      await fetchAllProfileData(event, emit);
    });
  }

  final _rootUsecase = di<RootUsecase>();
  Future<void> logOut(LogOutEvent logOutEvent, Emitter<RootState> emitter) async{
    _rootUsecase.execute(userId: await HiveService.getUserId());
  }

  final fetchProfileDataUseCase = di<ProfileUseCase>();
  Future<void> fetchAllProfileData(FetchAllProfileData event, Emitter<RootState> emit) async {
    await fetchProfileDataUseCase.execute().then(
          (value) => value.fold(
            (l) {
          emit(ExceptionState(message: l.message),);
        },
            (r) {
          emit(FetchProfileState(profileSuccess: r),);
        },
      ),
    );
  }
}
