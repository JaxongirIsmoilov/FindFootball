import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/auth/confirmation/data/models/remote/response/verify_user_success_response.dart';
import 'package:find_football/src/features/auth/confirmation/domain/repository/verify_repository.dart';
import 'package:find_football/src/features/auth/register/data/models/remote/response/register_response.dart';
import 'package:find_football/src/features/auth/register/domain/repository/register_repository.dart';
import 'package:flutter/cupertino.dart';

abstract class VerifyCase {
  Future<Either<Failure, VerifyUserSuccessResponse>> execute(String otpCode);
}

class VerifyUseCase extends VerifyCase{

  final VerifyRepository _verifyRepository;
  VerifyUseCase(this._verifyRepository);

  @override
  Future<Either<Failure, VerifyUserSuccessResponse>> execute(String otpCode) async {
    return await _verifyRepository.verifyUser(otpCode: otpCode);
  }
}