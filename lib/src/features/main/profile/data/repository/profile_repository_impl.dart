import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/main/profile/data/models/request/request_to_host.dart';
import 'package:find_football/src/features/main/profile/data/models/response/profile_success.dart';
import 'package:find_football/src/features/main/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository{
  
  final ApiService _apiService;
  
  ProfileRepositoryImpl(this._apiService);
  
  
  @override
  Future<Either<Failure, ProfileSuccess>> getProfile() async{
    try{
    var response = await _apiService.get(endPoint: '/users/${await HiveService.getUserId()}');
      return Right(ProfileSuccess.fromJson(response.data));
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }

  }

  @override
  Future<Either<Failure, String>> requestToHost() async {
    try{
      var response = await _apiService.post(endPoint: '/users/create_account', data: RequestToHost(await HiveService.getUserId(), 2));
      return Right(response.data as String);
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
}