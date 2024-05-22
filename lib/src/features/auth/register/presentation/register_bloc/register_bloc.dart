import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/utils/pop_up_modal.dart';
import 'package:find_football/src/features/auth/register/domain/usecase/register_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';

@lazySingleton
class RegisterBloc extends Bloc<AuthEvent, AuthState> {
  RegisterBloc() : super(InitialState()) {
    on<RegisterEvent>((event, emit) async {
      await register(event, emit);
    });
  }

  final _registerUseCase = di<RegisterUseCase>();

  Future<void> register(RegisterEvent registerEvent, Emitter<AuthState> emit) async {
    await _registerUseCase
        .execute(
            registerEvent.buildContext,
            registerEvent.fullName,
            registerEvent.login,
            registerEvent.phoneNumber,
            registerEvent.password)
        .then(
          (value) => value.fold(
            (l) {
              popUp(registerEvent.buildContext, error: l.message);
              ExceptionState(message: l.message);
            },
            (r) {
              registerEvent.buildContext.pushRoute(ConfirmCodeView(phoneNumber: registerEvent.phoneNumber),);
            },
          ),
        );
  }
}
