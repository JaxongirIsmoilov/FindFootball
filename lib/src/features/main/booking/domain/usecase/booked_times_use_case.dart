import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/booking/domain/repository/booking_repository.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/http/failure.dart';
import '../../data/models/response/booked_times_success.dart';

abstract class BookedTimesCase{
  Future<Either<Failure, List<BookedTimeSuccess>>> execute({required BuildContext buildContext, required DateTime startTime, required DateTime endTime,required String stadiumId,});
}

class BookedTimesUseCase extends BookedTimesCase{

  final BookingRepository bookedTimesRepository;

  BookedTimesUseCase(this.bookedTimesRepository);

  @override
  Future<Either<Failure, List<BookedTimeSuccess>>> execute({required BuildContext buildContext, required DateTime startTime, required DateTime endTime, required String stadiumId}) async {
   return await bookedTimesRepository.getBookedTimes(buildContext: buildContext, startTime: startTime, endTime: endTime, stadiumId: stadiumId);
  }

}