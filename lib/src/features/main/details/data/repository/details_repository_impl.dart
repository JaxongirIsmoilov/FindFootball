import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/main/details/domain/repository/details_repository.dart';

class DetailsRepositoryImpl extends DetailsRepository{
  
  final ApiService apiService;
  DetailsRepositoryImpl(this.apiService);
  
  @override
  Future<Either<Failure, dynamic>> addToFavorite({required String stadiumId}) async {
    try{
      String accountId = await HiveService.getAccountId();
      var response = await apiService.post(endPoint: '/users/accounts/$accountId/stadiums/$stadiumId/save');
      return Right(response.data);
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }

  }

  @override
  Future<Either<Failure, dynamic>> removeFromFavorite({required String stadiumId}) async {
    try{
      String accountId = await HiveService.getAccountId();
      var response = await apiService.delete(endPoint: '/users/accounts/$accountId/stadiums/$stadiumId/remove_from_saved');
      return  Right(response.data);
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
}