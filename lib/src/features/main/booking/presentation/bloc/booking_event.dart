part of 'booking_bloc.dart';

abstract class BookingEvent extends Equatable {
  const BookingEvent();

  @override
  List<Object?> get props => [];
}

class GetAllBookedTimes extends BookingEvent {
  final BuildContext context;
  final String stadiumId;
  final DateTime startTime;
  final DateTime endTime;

  const GetAllBookedTimes({
    required this.context,
    required this.stadiumId,
    required this.startTime,
    required this.endTime,
  });
}

class BookStadiumEvent extends BookingEvent{
  final BuildContext context;
  final String stadiumId;
  final String date;
  final String startTime;
  final String endTime;

  const BookStadiumEvent({required this.context,required this.stadiumId, required this.date, required this.startTime,required this.endTime,});
}
