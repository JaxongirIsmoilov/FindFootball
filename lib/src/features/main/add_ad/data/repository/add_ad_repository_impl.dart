import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/main/add_ad/data/models/response/district_success.dart';
import 'package:find_football/src/features/main/add_ad/domain/repository/add_ad_repository.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddAdRepositoryImpl extends AddAdRepository{
  
  final ApiService apiService;

  AddAdRepositoryImpl(this.apiService);
  
  
  @override
  Future<Either<Failure, List<DistrictSuccess>>> getDistricts({required BuildContext context}) async {
    try {
      var response = await apiService.get(endPoint: '/districts');
      return Right((response.data as List).map((district) => DistrictSuccess.fromJson(district)).toList());
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
}