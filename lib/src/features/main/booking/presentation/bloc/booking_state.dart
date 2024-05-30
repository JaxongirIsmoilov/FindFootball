part of 'booking_bloc.dart';

abstract class BookingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BookInitialState extends BookingState{

}

class BookStadiumState extends BookingState{

}

class BookedTimesState extends BookingState{
  final List<BookedTimeSuccess> bookedTimes;

  BookedTimesState({required this.bookedTimes});
  @override
  List<Object?> get props => [bookedTimes];
}

class ExceptionState extends BookingState {
  final String message;
  ExceptionState({required this.message});
  @override
  List<Object> get props => [message];
}


