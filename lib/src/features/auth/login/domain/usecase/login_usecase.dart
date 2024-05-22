import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/auth/login/data/models/remote/response/login_success_response.dart';
import 'package:find_football/src/features/auth/login/domain/repository/login_repository.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginCase{
  Future<Either<Failure, LoginSuccessResponse>> execute({required BuildContext context, required String login, required String password});
}

class LoginUseCase extends LoginCase{

  final LoginRepository _loginRepository;
  LoginUseCase(this._loginRepository);

  @override
  Future<Either<Failure, LoginSuccessResponse>> execute({required BuildContext context, required String login, required String password}) async {
    return await _loginRepository.login(context: context, login: login, password: password);
  }

}