import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/utils/dialogs.dart';
import 'package:find_football/src/core/utils/pop_up_modal.dart';
import 'package:find_football/src/core/widgets/custom_button.dart';
import 'package:find_football/src/features/auth/login/widgets/custom_text_field.dart';
import 'package:find_football/src/features/main/add_ad/data/models/place.dart';
import 'package:find_football/src/features/main/add_ad/data/models/response/district_success.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/custom_dropdown.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/custom_text_field_preffered_size.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/image_input.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/location_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/add_ad_bloc.dart';

@RoutePage()
class AddAdView extends StatefulWidget {
  const AddAdView({super.key, required this.isUserHost});

  final bool isUserHost;

  @override
  State<AddAdView> createState() => _AddAdViewState();
}

class _AddAdViewState extends State<AddAdView> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _stadiumName;
  late TextEditingController _priceCurrency;
  late TextEditingController _priceAmount;
  late TextEditingController _stadiumDetails;
  late List<DistrictSuccess> districtsList;
  late List<String> districtsNameList;
  TimeOfDay? workStartTime;
  TimeOfDay? workEndTime;
  String? lat;
  String? long;
  late final PlaceLocation? _placeLocation;
  late final List<File>? _selectedImages;
  late String selectedValue = '';
  late String selectedValueId = '';
  late bool isDropdownOpen = false;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _stadiumName = TextEditingController();
    _priceCurrency = TextEditingController();
    _priceAmount = TextEditingController();
    _stadiumDetails = TextEditingController();
    districtsList = [];
    districtsNameList = [];
    di<AddAdBloc>().add(GetAllDistrictsEvent(context));
    super.initState();
  }

  void _openWorkStartTimePicker() async {
    await showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      if (value != null && value != workStartTime) {
        setState(() {
          workStartTime = value;
        });
      }
    });
  }

  void _openWorkEndTimePicker() async {
    await showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      if (value != null && value != workEndTime) {
        setState(() {
          workEndTime = value;
        });
      }
    });
  }

  String formatTimeOfDay(TimeOfDay timeOfDay) {
    final hour = timeOfDay.hour.toString().padLeft(2, '0');
    final minute = timeOfDay.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _stadiumName.dispose();
    _priceCurrency.dispose();
    _priceAmount.dispose();
    _stadiumDetails.dispose();
    districtsList = [];
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isUserHost
        ? BlocBuilder<AddAdBloc, AddAdState>(
            builder: (context, state) {
              if (state is InitialState) {
                return Loaders.loading(context);
              }
              if (state is GetAllDistrictsState) {
                districtsList.addAll(state.districts);
                selectedValue = districtsList.first.name;
              }
              if (state is SelectedDistrictState) {
                selectedValue = state.selectedDistrict.name;
                selectedValueId = state.selectedDistrict.id;
              }

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Add Ad',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                  color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // const Spacer(),
                        //Stadium Name
                        CustomTextField(
                          controller: _stadiumName,
                          hintText: "Enter stadium name",
                          prefixIcon: const Icon(
                            Icons.sports_soccer,
                            color: Colors.grey,
                          ),
                          backgroundColor: AppColors.textEditingBackgroundColor,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //Currency and Price
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              CustomTextFieldPref(
                                controller: _priceCurrency,
                                hintText:
                                    "Add price currency Ex: so'm, dollar, rubl",
                                prefixIcon: const Icon(
                                  Icons.money,
                                  color: AppColors.iconColor,
                                ),
                                backgroundColor:
                                    AppColors.textEditingBackgroundColor,
                                width: MediaQuery.of(context).size.width / 2.1,
                                height: 56,
                                keyboardType: TextInputType.name,
                              ),
                              const Spacer(),
                              CustomTextFieldPref(
                                controller: _priceAmount,
                                hintText: "Add price amount",
                                prefixIcon: const Icon(
                                  Icons.attach_money,
                                  color: AppColors.iconColor,
                                ),
                                backgroundColor:
                                    AppColors.textEditingBackgroundColor,
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 56,
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //Details
                        Container(
                          height: 224,
                          width: MediaQuery.of(context).size.width / 1.12,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            color: AppColors.textEditingBackgroundColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextFormField(
                            controller: _stadiumDetails,
                            keyboardType: TextInputType.multiline,
                            style: const TextStyle(color: AppColors.textColor),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              hintText: "Enter details about stadium",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              prefixIcon: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.speaker_notes,
                                    color: AppColors.iconColor,
                                  ),
                                ],
                              ),
                            ),
                            maxLines: 4,
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomDropDown(
                          districts: districtsList
                              .map((district) => district.name)
                              .toList(),
                          onChanged: (value) {
                            for (var i = 0; i <= districtsList.length; i++) {
                              if (districtsList[i].name == value) {
                                di<AddAdBloc>().add(
                                  SelectDistrictEvent(districtsList[i]),
                                );
                                break;
                              }
                            }
                          },
                          selectedValue: selectedValue,
                          isDropdownOpen: isDropdownOpen,
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 1.12,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            color: AppColors.textEditingBackgroundColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Working start time:",
                                style: TextStyle(color: Colors.grey.shade900),
                              ),
                              Text(
                                workStartTime == null
                                    ? "Working start time"
                                    : formatTimeOfDay(workStartTime!),
                                style: TextStyle(color: Colors.grey.shade900),
                              ),
                              IconButton(
                                onPressed: () {
                                  _openWorkStartTimePicker();
                                  // di<BookingBloc>().add(GetAllBookedTimes(context: context, stadiumId: widget.stadiumId, startTime: startTime!, endTime: endTime!, ),);
                                },
                                icon: const Icon(CupertinoIcons.time),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 1.12,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            color: AppColors.textEditingBackgroundColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Working end time:",
                                style: TextStyle(color: Colors.grey.shade900),
                              ),
                              Text(
                                workEndTime == null
                                    ? "Working end time"
                                    : formatTimeOfDay(workEndTime!),
                                style: TextStyle(color: Colors.grey.shade900),
                              ),
                              IconButton(
                                onPressed: () {
                                  _openWorkEndTimePicker();
                                  // di<BookingBloc>().add(GetAllBookedTimes(context: context, stadiumId: widget.stadiumId, startTime: startTime!, endTime: endTime!, ),);
                                },
                                icon: const Icon(CupertinoIcons.time),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: LocationInputWidget(
                              onGetLocation: (selectedLocation) {
                                _placeLocation = selectedLocation;
                              },
                              name: _stadiumName.text),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        const ImageInput(),

                        const SizedBox(
                          height: 15,
                        ),

                        CustomButton(
                            color: AppColors.buttonColor,
                            text: "Submit",
                            textColor: AppColors.white,
                            onTap: () {
                              if(_placeLocation != null && workStartTime != null && workEndTime != null ){
                                di<AddAdBloc>().add(
                                  AddAdButtonEvent(
                                    context: context,
                                    name: _stadiumName.text,
                                    priceCurrency: _priceCurrency.text,
                                    priceAmount: double.parse(_priceAmount.text),
                                    locationLatitude: _placeLocation.latitude,
                                    locationLongitude: _placeLocation.longitude,
                                    workStartHour:
                                    formatTimeOfDay(workStartTime!),
                                    workEndHour: formatTimeOfDay(workEndTime!),
                                    districtId: selectedValueId,
                                    details: _stadiumDetails.text,
                                    images: state.images,
                                  ),
                                );
                              }else {
                                popUp(context, error: 'Please fill up all fields first!!!');
                              }

                            })
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        : const Center(
            child: Text(
              'Please wait to Admin to give you access!!!',
              style: TextStyle(color: AppColors.textColor),
            ),
          );
  }
}
