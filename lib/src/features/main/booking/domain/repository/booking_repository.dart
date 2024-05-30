import 'package:dartz/dartz.dart';
import 'package:find_football/src/features/main/booking/data/models/response/book_stadium_success/book_stadium_success.dart';
import 'package:find_football/src/features/main/booking/data/models/response/booked_times_success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/http/failure.dart';

abstract class BookingRepository{
  Future<Either<Failure, List<BookedTimeSuccess>>> getBookedTimes({required BuildContext buildContext, required DateTime startTime, required DateTime endTime,required String stadiumId,});
  Future<Either<Failure, BookStadiumSuccess>> bookStadium({required BuildContext context, required String stadiumId, required String date, required String startTime, required String endTime,});
}