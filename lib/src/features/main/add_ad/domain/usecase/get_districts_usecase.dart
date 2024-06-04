import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/add_ad/domain/repository/add_ad_repository.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/http/failure.dart';
import '../../data/models/response/district_success.dart';

abstract class GetDistrictsCase {
  Future<Either<Failure, List<DistrictSuccess>>> execute({required BuildContext context});
}

class GetDistrictsUseCase extends GetDistrictsCase{

  final AddAdRepository addAdRepository;

  GetDistrictsUseCase(this.addAdRepository);

  @override
  Future<Either<Failure, List<DistrictSuccess>>> execute({required BuildContext context}) async {
    return await addAdRepository.getDistricts(context: context);
  }

}