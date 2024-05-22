import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/auth/login/data/models/remote/request/login_request.dart';
import 'package:find_football/src/features/auth/login/data/models/remote/response/login_success_response.dart';
import 'package:find_football/src/features/auth/login/domain/repository/login_repository.dart';
import 'package:flutter/cupertino.dart';

class LoginRepositoryImpl extends LoginRepository{

  final ApiService apiService;
  LoginRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, LoginSuccessResponse>> login({required BuildContext context, required String login, required String password}) async {
    try{
      var response = await apiService.post(endPoint: '/auth/login', data: LoginRequestModel(login, password).toJson(),);

      HiveService.removeAccessToken();
      HiveService.removeRefreshToken();
      HiveService.removeUserId();
      HiveService.removeVerifiedUser();
      HiveService.saveAccessToken(response.data['accessToken']);
      HiveService.saveRefreshToken(response.data['refreshToken']);
      HiveService.saveUserId(response.data['userId']);
      HiveService.saveVerifiedUser(true);
      return Right(LoginSuccessResponse.fromJson(response.data),);
    }catch(e){
        return Left(ErrorHandler.handle(e).failure);
    }
  }

}