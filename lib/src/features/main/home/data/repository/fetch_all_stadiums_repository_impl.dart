import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart';

import '../../domain/repository/fetch_all_stadiums_repository.dart';

class FetchAllStadiumsRepositoryImpl extends FetchAllStadiumsRepository{
  
  final ApiService apiService;
  FetchAllStadiumsRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<AllStadiumsSuccess>>> fetchAllStadiums() async {
    try{
      var response = await apiService.get(endPoint: '/stadiums');
      return Right((response.data as List).map((e) => AllStadiumsSuccess.fromJson(e)).toList());
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
  
}