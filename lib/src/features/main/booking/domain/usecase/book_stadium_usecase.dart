import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/http/failure.dart';
import '../../data/models/response/book_stadium_success/book_stadium_success.dart';
import '../repository/booking_repository.dart';

abstract class BookStadiumCase {
  Future<Either<Failure, BookStadiumSuccess>> execute({required BuildContext context, required String stadiumId, required String date, required String startTime, required String endTime,});
}

class BookStadiumUseCase extends BookStadiumCase{

  final BookingRepository bookingRepository;

  BookStadiumUseCase(this.bookingRepository);
  @override
  Future<Either<Failure, BookStadiumSuccess>> execute({required BuildContext context, required String stadiumId, required String date, required String startTime, required String endTime}) async {
    return await bookingRepository.bookStadium(context: context, stadiumId: stadiumId, date: date, startTime: startTime, endTime: endTime);
  }

}