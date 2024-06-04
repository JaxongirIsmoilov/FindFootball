import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:find_football/src/core/http/api_service.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/features/main/add_ad/data/models/request/stadium_request.dart';
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

  @override
  Future<Either<Failure, dynamic>> addAd({required BuildContext context, required StadiumRequest stadiumRequest}) async {
    List<MultipartFile> imageFiles= [];

    for(var image in stadiumRequest.images){
      imageFiles.add(await MultipartFile.fromFile(image.path, filename: image.path.split('/').last));
    }
    try{
      final formData = FormData.fromMap({
        'OwnerAccountId': stadiumRequest.ownerAccountId,
        'Name': stadiumRequest.name,
        'Price.Currency': stadiumRequest.priceCurrency,
        'Price.Amount': stadiumRequest.priceAmount,
        "Location.Latitude": stadiumRequest.latitude,
        "Location.Longitude": stadiumRequest.longitude,
        'WorkStartHour': stadiumRequest.workStartHour,
        'WorkEndingHour': stadiumRequest.workEndingHour,
        'DistrictId': stadiumRequest.districtId,
        'Details': stadiumRequest.details,
        'Images': imageFiles,
      });

      var response = await apiService.post(endPoint: '/stadiums', data: formData);
      return Right(response.data);
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
  
}