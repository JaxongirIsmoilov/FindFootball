import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';
import 'package:find_football/src/features/main/favotire/domain/repository/favorite_repository.dart';

import '../../../home/data/models/response/all_stadiums_success.dart';

class FavoriteRepositoryImpl extends FavoriteRepository{
  
  final ApiService apiService;
  FavoriteRepositoryImpl(this.apiService);
  
  @override
  Future<Either<Failure, List<SavedStadiumsSuccess>>> getAllFavoriteStadiums() async {
    try{
      var response = await apiService.get(endPoint: '/users/me/accounts/${await HiveService.getAccountId()}/saved_stadiums');
      return Right((response.data as List).map((stadium) => SavedStadiumsSuccess.fromJson(stadium)).toList());
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
}