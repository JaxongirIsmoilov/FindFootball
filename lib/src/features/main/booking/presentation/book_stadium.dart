import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/features/main/profile/presentation/widgets/custom_button_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/widgets/error/global_error.dart';
import '../data/models/response/booked_times_success.dart';
import 'bloc/booking_bloc.dart';

class BookStadium extends StatefulWidget {
  const BookStadium({
    super.key,
    required this.stadiumId,
    required this.startWorkingTime,
    required this.endWorkingTime,
    required this.price,
    required this.currency,
  });

  final String stadiumId;
  final int price;
  final String currency;
  final String startWorkingTime;
  final String endWorkingTime;

  @override
  State<BookStadium> createState() => _BookStadiumState();
}

class _BookStadiumState extends State<BookStadium> {
  DateTimeRange? selectedDateRange;
  DateTime? startTime;
  DateTime? endTime;
  late List<BookedTimeSuccess> bookedTimes = [];
  bool isPicked = false;
  DateTime? gameDate;
  TimeOfDay? gameStartTime;
  TimeOfDay? gameEndTime;
  bool isTimePicked = false;

  void _openDateRangePicker() async {
    DateTime now = DateTime.now();
    await showDateRangePicker(
      context: context,
      firstDate: now,
      lastDate: DateTime(2100),
    ).then((value) {
      if (value != null && value != selectedDateRange) {
        setState(() {
          selectedDateRange = value;
          startTime = value.start;
          endTime = value.end;
          isPicked = true;
        });
      }
      di<BookingBloc>().add(
        GetAllBookedTimes(
          context: context,
          stadiumId: widget.stadiumId,
          startTime: value!.start,
          endTime: value.end,
        ),
      );
      return null;
    });
  }

  void _openDatePicker() async {
    await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        if (value != null && value != gameDate) {
          gameDate = value;
        }
      });
    });
  }

  String formatTimeOfDay(TimeOfDay timeOfDay) {
    final hour = timeOfDay.hour.toString().padLeft(2, '0');
    final minute = timeOfDay.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  void _openGameStartTimePicker() async {
    await showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      if (value != null && value != gameStartTime) {
        setState(() {
          gameStartTime = value;
        });
      }
    });
  }

  void _openGameEndTimePicker() async {
    await showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      if (value != null && value != gameEndTime) {
        setState(() {
          gameEndTime = value;
          isTimePicked = true;
        });
      }
    });
  }

  String formatTime(String time) {
    DateTime parsedTime = DateFormat('HH:mm:ss').parse(time);
    return DateFormat('HH:mm').format(parsedTime);
  }

  Color getTimeColor(String startTime, String endTime) {
    DateTime now = DateTime.now();
    DateTime start = DateFormat('HH:mm:ss').parse(startTime);
    DateTime end = DateFormat('HH:mm:ss').parse(endTime);

    DateTime startToday = DateTime(
        now.year, now.month, now.day, start.hour, start.minute, start.second);
    DateTime endToday = DateTime(
        now.year, now.month, now.day, end.hour, end.minute, end.second);

    if (endToday.isBefore(now)) {
      return Colors.red; // Past
    } else if (now.isAfter(startToday) && now.isBefore(endToday)) {
      return Colors.green; // Ongoing
    } else {
      return Colors.blue; // Future
    }
  }

  int calculateGameDurationInHour(
      TimeOfDay gameStartTime, TimeOfDay gameEndTime) {
    int startMinutes = gameStartTime.hour * 60 + gameStartTime.minute;
    int endMinutes = gameEndTime.hour * 60 + gameEndTime.minute;
    int durationMinutes;
    if (endMinutes >= startMinutes) {
      durationMinutes = endMinutes - startMinutes;
    } else {
      // Handle case where end time is past midnight
      durationMinutes = (24 * 60 - startMinutes) + endMinutes;
    }

    return durationMinutes ~/ 60;
  }

  @override
  void dispose() {
    bookedTimes = [];
    isPicked = false;
    isTimePicked = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        if (state is BookedTimesState) {
          bookedTimes.clear();
          bookedTimes.addAll(state.bookedTimes);
        }
        if (state is ExceptionState) {
          return GlobalError(
            message: state.message,
            onPressed: () {},
          );
        }
        return SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Choose a date which dates you want to book',
                  style: TextStyle(color: AppColors.textColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 1.12,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        selectedDateRange == null
                            ? "Start Date"
                            : selectedDateRange!.start
                                .toLocal()
                                .toString()
                                .split(' ')[0],
                        style: TextStyle(color: Colors.grey.shade900),
                      ),
                      Text(
                        selectedDateRange == null
                            ? "End Date"
                            : selectedDateRange!.end
                                .toLocal()
                                .toString()
                                .split(' ')[0],
                        style: TextStyle(color: Colors.grey.shade900),
                      ),
                      IconButton(
                        onPressed: () {
                          _openDateRangePicker();
                          // di<BookingBloc>().add(GetAllBookedTimes(context: context, stadiumId: widget.stadiumId, startTime: startTime!, endTime: endTime!, ),);
                        },
                        icon: const Icon(CupertinoIcons.calendar),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                if (isPicked)
                  bookedTimes.isNotEmpty
                      ? Column(
                          children: [
                            const Text(
                              "Times are showed below is booked, Please choose except this times",
                              style: TextStyle(color: AppColors.textColor),
                              textAlign: TextAlign.center,
                            ),
                            Wrap(
                              spacing: 8.0, // gap between adjacent chips
                              runSpacing: 4.0, // gap between lines
                              children: bookedTimes.map((time) {
                                return Chip(
                                  avatar:
                                      const Icon(Icons.access_time, size: 20.0),
                                  label: Text(
                                      "${formatTime(time.startTime)}-${formatTime(time.endTime)}"),
                                  backgroundColor:
                                      getTimeColor(time.startTime, time.endTime),
                                );
                              }).toList(),
                            ),
                          ],
                        )
                      : const Text(
                          "There is no reservation range that you picked.You can reserve in working times",
                          style: TextStyle(color: AppColors.textColor),
                          textAlign: TextAlign.center,
                        ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Working Start Time:   ',
                          style: TextStyle(color: AppColors.textColor),
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              widget.startWorkingTime,
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Working End Time:   ',
                          style: TextStyle(color: AppColors.textColor),
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              widget.endWorkingTime,
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                isPicked
                    ? Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.12,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Game Date:",
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            Text(
                              gameDate == null
                                  ? "Date"
                                  : gameDate!.toLocal().toString().split(' ')[0],
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            IconButton(
                              onPressed: () {
                                _openDatePicker();
                                // di<BookingBloc>().add(GetAllBookedTimes(context: context, stadiumId: widget.stadiumId, startTime: startTime!, endTime: endTime!, ),);
                              },
                              icon:
                                  const Icon(CupertinoIcons.calendar_badge_plus),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 15,
                ),
                isPicked
                    ? Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.12,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Game Start Time:",
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            Text(
                              gameStartTime == null
                                  ? "Start Time"
                                  : formatTimeOfDay(gameStartTime!),
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            IconButton(
                              onPressed: () {
                                _openGameStartTimePicker();
                                // di<BookingBloc>().add(GetAllBookedTimes(context: context, stadiumId: widget.stadiumId, startTime: startTime!, endTime: endTime!, ),);
                              },
                              icon: const Icon(CupertinoIcons.time),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 15,
                ),
                isPicked
                    ? Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.12,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Game Ends Time:",
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            Text(
                              gameEndTime == null
                                  ? "End Time"
                                  : formatTimeOfDay(gameEndTime!),
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            IconButton(
                              onPressed: () {
                                _openGameEndTimePicker();
                                // di<BookingBloc>().add(GetAllBookedTimes(context: context, stadiumId: widget.stadiumId, startTime: startTime!, endTime: endTime!, ),);
                              },
                              icon: const Icon(CupertinoIcons.time),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 15,
                ),
                isTimePicked
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${calculateGameDurationInHour(gameStartTime!, gameEndTime!) * widget.price}",
                            style: const TextStyle(color: AppColors.textColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.currency,
                            style: const TextStyle(color: AppColors.textColor),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      )
                    : Container(),
                CustomButtonPref(
                  color: AppColors.buttonColor,
                  text: "Book Now",
                  textColor: AppColors.white,
                  onTap: () {
                    di<BookingBloc>().add(
                      BookStadiumEvent(
                          context: context,
                          stadiumId: widget.stadiumId,
                          date: gameDate!.toLocal().toString().split(' ')[0],
                          startTime: "${formatTimeOfDay(gameStartTime!)}:00",
                          endTime: "${formatTimeOfDay(gameEndTime!)}:00"),
                    );
                  },
                  width: MediaQuery.of(context).size.width / 1.12,
                  height: 55,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
