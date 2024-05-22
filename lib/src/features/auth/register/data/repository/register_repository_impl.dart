import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/auth/register/data/models/remote/request/register_request.dart';
import 'package:find_football/src/features/auth/register/data/models/remote/response/register_response.dart';
import 'package:find_football/src/features/auth/register/domain/repository/register_repository.dart';
import 'package:flutter/cupertino.dart';

class RegisterRepositoryImpl extends RegisterRepository{
  
  final ApiService apiService;
  
  RegisterRepositoryImpl(this.apiService);
  
  @override
  Future<Either<Failure, RegisterResponse>> register({required BuildContext buildContext, required String fullName, required String login, required String phoneNumber, required String password}) async {
    try{
    var response = await apiService.post(endPoint: '/auth/register', data: RegisterRequest(fullName, login, phoneNumber, password).toJson(),);
    HiveService.saveOtpToken(response.data['token']);
      return Right(RegisterResponse.fromJson(response.data));
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}