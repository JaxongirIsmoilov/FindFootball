import 'package:dartz/dartz.dart';
import 'package:find_football/src/core/http/error_handler.dart';
import 'package:find_football/src/core/http/failure.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/main/booking/data/models/request/book_stadium_request/book_stadium_request.dart';
import 'package:find_football/src/features/main/booking/data/models/request/booked_time_request.dart';
import 'package:find_football/src/features/main/booking/data/models/response/book_stadium_success/book_stadium_success.dart';
import 'package:find_football/src/features/main/booking/data/models/response/booked_times_success.dart';
import 'package:find_football/src/features/main/booking/domain/repository/booking_repository.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../../../../core/http/api_service.dart';

class BookingRepositoryImpl extends BookingRepository {
  final ApiService apiService;

  BookingRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookedTimeSuccess>>> getBookedTimes(
      {required BuildContext buildContext,
      required String stadiumId,
      required DateTime startTime,
      required DateTime endTime}) async {
    try {
      var response = await apiService.get(
        endPoint: '/stadiums/$stadiumId/slots',
        params: {
          "startDate": DateFormat("yyyy-MM-dd").format(startTime),
          "endDate": DateFormat("yyyy-MM-dd").format(endTime),
        },
        data: stadiumId,
      );
      return Right((response.data as List).map((e) => BookedTimeSuccess.fromJson(e)).toList());
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, BookStadiumSuccess>> bookStadium({required BuildContext context, required String stadiumId, required String date, required String startTime, required String endTime}) async{
    try{
      var response = await apiService.post(endPoint: '/bookings', data: BookStadiumRequest(await HiveService.getAccountId(), stadiumId, date, startTime, endTime).toJson(),);
      return Right(BookStadiumSuccess.fromJson(response.data),);
    }catch(e){
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
