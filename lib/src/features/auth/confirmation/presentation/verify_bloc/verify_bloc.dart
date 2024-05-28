import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/utils/pop_up_modal.dart';
import 'package:find_football/src/features/auth/confirmation/domain/usecase/verify_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/di.dart';
import '../../../../main/home/presentation/bloc/home_bloc.dart';

part 'verify_event.dart';
part 'verify_state.dart';
@lazySingleton
class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  VerifyBloc() : super(InitState()) {
    on<VerifyRegisterEvent>((event, emit) async {
      await verifyUser(event, emit);
    });
  }

  final verifyUseCase = di<VerifyUseCase>();

  Future<void> verifyUser(VerifyRegisterEvent verifyRegisterEvent,
      Emitter<VerifyState> state) async {
    await verifyUseCase.execute(verifyRegisterEvent.otpCode).then(
          (value) => value.fold(
            (l) {
              popUp(verifyRegisterEvent.buildContext, error: l.message);
              ExceptionState(message: l.message);},
            (r) {
              verifyRegisterEvent.buildContext.replaceRoute(HomeView());
              // di<HomeBloc>().add(FetchAllStadiumsEvent(context: verifyRegisterEvent.buildContext),);

            },
          ),
        );
  }
}
