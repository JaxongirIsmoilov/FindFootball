import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/add_ad/domain/repository/add_ad_repository.dart';
import 'package:flutter/material.dart';

import '../../../../../core/http/failure.dart';
import '../../data/models/request/stadium_request.dart';

abstract class AddAdCase {
  Future<Either<Failure, dynamic>> execute({required BuildContext context, required StadiumRequest stadiumRequest});
}


class AddAdUseCase extends AddAdCase{

  final AddAdRepository addAdRepository;

  AddAdUseCase(this.addAdRepository);

  @override
  Future<Either<Failure, dynamic>> execute({required BuildContext context, required StadiumRequest stadiumRequest}) async {
    return await addAdRepository.addAd(context: context, stadiumRequest: stadiumRequest);
  }

}