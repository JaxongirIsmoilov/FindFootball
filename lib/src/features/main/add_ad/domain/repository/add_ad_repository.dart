import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/add_ad/data/models/response/district_success.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/http/failure.dart';

abstract class AddAdRepository {
  Future<Either<Failure, List<DistrictSuccess>>> getDistricts({required BuildContext context});
}