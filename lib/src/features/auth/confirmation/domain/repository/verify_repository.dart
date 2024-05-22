import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/auth/confirmation/data/models/remote/response/verify_user_success_response.dart';

abstract class VerifyRepository{
  Future<Either<Failure, VerifyUserSuccessResponse>> verifyUser({ required String otpCode});
}