import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/auth/register/data/models/remote/response/register_response.dart';
import 'package:find_football/src/features/auth/register/domain/repository/register_repository.dart';
import 'package:flutter/cupertino.dart';

abstract class RegisterCase {
  Future<Either<Failure, RegisterResponse>> execute(BuildContext buildContext, String fullName, String login, String phoneNumber, String password,);
}

class RegisterUseCase extends RegisterCase{

  final RegisterRepository _registerRepository;
  RegisterUseCase(this._registerRepository);

  @override
  Future<Either<Failure, RegisterResponse>> execute(BuildContext buildContext, String fullName, String login, String phoneNumber, String password) async {
    return await _registerRepository.register(buildContext: buildContext, fullName: fullName, login: login, phoneNumber: phoneNumber, password: password);
  }

}