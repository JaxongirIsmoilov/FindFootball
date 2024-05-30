import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/features/main/booking/domain/usecase/book_stadium_usecase.dart';
import 'package:find_football/src/features/main/booking/domain/usecase/booked_times_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/utils/pop_up_modal.dart';
import '../../data/models/response/booked_times_success.dart';

part 'booking_event.dart';
part 'booking_state.dart';

@lazySingleton
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookInitialState()) {
    on<GetAllBookedTimes>((event, emit) async {
      await getAllBookedTimes(event, emit);
    });

    on<BookStadiumEvent>((event, emit) async {
      await bookStadium(event, emit);
    });
  }

  final _bookedTimesUseCase = di<BookedTimesUseCase>();
  final _bookStadiumUseCase = di<BookStadiumUseCase>();

  Future<void> getAllBookedTimes(
      GetAllBookedTimes event, Emitter<BookingState> emit) async {
    await _bookedTimesUseCase
        .execute(
            buildContext: event.context,
            startTime: event.startTime,
            endTime: event.endTime,
            stadiumId: event.stadiumId)
        .then(
          (value) => value.fold(
            (l) {
              popUp(event.context, error: l.message);
              emit(ExceptionState(message: l.message));
            },
            (r) {
              emit(BookedTimesState(bookedTimes: r));
            },
          ),
        );
  }

  Future<void> bookStadium(
      BookStadiumEvent event, Emitter<BookingState> emit) async {
    await _bookStadiumUseCase
        .execute(
            context: event.context,
            stadiumId: event.stadiumId,
            date: event.date,
            startTime: event.startTime,
            endTime: event.endTime)
        .then(
          (value) => value.fold(
            (l) {
              popUp(event.context, error: l.message);
              emit(ExceptionState(message: l.message),);
            },
            (r) {
              event.context.replaceRoute(HomeView());
            },
          ),
        );
  }
}
