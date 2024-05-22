import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/auth/confirmation/data/models/remote/response/verify_user_success_response.dart';
import 'package:find_football/src/features/auth/confirmation/domain/repository/verify_repository.dart';

import '../../../../../core/http/api_service.dart';
import '../../../../../core/http/error_handler.dart';
import '../models/remote/request/verify_user_request.dart';

class VerifyRepositoryImpl extends VerifyRepository{

  final ApiService apiService;
  VerifyRepositoryImpl(this.apiService);
  
  @override
  Future<Either<Failure, VerifyUserSuccessResponse>> verifyUser({required String otpCode}) async {
    try{
      var response = await apiService.post(endPoint: 'auth/verify', data:  VerifyUserRequest(otpCode).toJson(), params: HiveService.getOtpToken(),);
      HiveService.deleteOtpToken();
      HiveService.saveAccessToken(response.data['accessToken']);
      HiveService.saveRefreshToken(response.data['refreshToken']);
      HiveService.saveUserId(response.data['userId']);
      HiveService.saveVerifiedUser(true);
      return Right(VerifyUserSuccessResponse.fromJson(response.data));
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
}