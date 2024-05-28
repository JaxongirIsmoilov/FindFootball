import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/main/root/domain/repository/root_repository.dart';

class RootRepositoryImpl extends RootRepository{

  final ApiService apiService;
  RootRepositoryImpl(this.apiService);
  @override
  Future<Either<Failure, dynamic>> logOut({ required String userId}) async {
    try{
      var response = await apiService.post(endPoint: '/auth/logout', data: {'UserId' : userId});
      HiveService.removeVerifiedUser();
      HiveService.removeUserId();
      HiveService.removeRefreshToken();
      HiveService.removeAccessToken();
      return Right(response.data);
    }catch(e){
      return  Left(ErrorHandler.handle(e).failure);
    }
  }

}