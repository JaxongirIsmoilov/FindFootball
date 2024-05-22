import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/utils/pop_up_modal.dart';
import 'package:find_football/src/features/auth/login/domain/usecase/login_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<AuthEvent, AuthState> {
  LoginBloc() : super(InitialState()) {
    on<LoginEvent>((event, emit) async {
      await login(event, emit);
    });
  }

  final _loginUseCase = di<LoginUseCase>();

  Future<void> login(LoginEvent loginEvent, Emitter<AuthState> emit) async {
    await _loginUseCase
        .execute(
            context: loginEvent.buildContext,
            login: loginEvent.login,
            password: loginEvent.password)
        .then(
          (value) => value.fold(
            (l) {
              popUp(loginEvent.buildContext, error: l.message);
              ExceptionState(message: l.message);
            },
            (r) {
              loginEvent.buildContext.replaceRoute(RootView());
            },
          ),
        );
  }
}
