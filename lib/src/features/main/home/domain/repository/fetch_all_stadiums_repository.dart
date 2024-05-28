import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart';

abstract class FetchAllStadiumsRepository{
  Future<Either<Failure, List<AllStadiumsSuccess>>> fetchAllStadiums();
}