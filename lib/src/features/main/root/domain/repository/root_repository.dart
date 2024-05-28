import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';

abstract class RootRepository{
  Future<Either<Failure, dynamic>> logOut({ required String userId});
}