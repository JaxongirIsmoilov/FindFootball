import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';

abstract class DetailsRepository{
  Future<Either<Failure, dynamic>> addToFavorite({required String stadiumId});
  Future<Either<Failure, dynamic>> removeFromFavorite({required String stadiumId});
}