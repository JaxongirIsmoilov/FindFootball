import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/main/root/domain/repository/root_repository.dart';
import 'package:flutter/cupertino.dart';

abstract class RootCase{
  Future<Either<Failure, dynamic>> execute({ required String userId});
}

class RootUsecase extends RootCase{

  final  RootRepository _rootRepository;
   RootUsecase(this._rootRepository);

  @override
  Future<Either<Failure, dynamic>> execute({ required String userId}) async {
    return await _rootRepository.logOut( userId: userId);
  }

}