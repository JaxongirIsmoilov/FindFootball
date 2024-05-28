import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/widgets/custom_button.dart';
import 'package:find_football/src/features/auth/login/widgets/custom_text_field.dart';
import 'package:find_football/src/features/main/add_ad/data/models/place.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/custom_text_field_preffered_size.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/image_input.dart';
import 'package:find_football/src/features/main/add_ad/presentation/widgets/location_input.dart';
import 'package:flutter/material.dart';

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
  late final PlaceLocation? _placeLocation;
  late final List<File>? _selectedImages;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _stadiumName = TextEditingController();
    _priceCurrency = TextEditingController();
    _priceAmount = TextEditingController();
    _stadiumDetails = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _stadiumName.dispose();
    _priceCurrency.dispose();
    _priceAmount.dispose();
    _stadiumDetails.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isUserHost ? SingleChildScrollView(
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
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              // const Spacer(),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    CustomTextFieldPref(
                      controller: _priceCurrency,
                      hintText: "Add price currency Ex: so'm, dollar, rubl",
                      prefixIcon: const Icon(
                        Icons.money,
                        color: AppColors.iconColor,
                      ),
                      backgroundColor: AppColors.textEditingBackgroundColor,
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
                      backgroundColor: AppColors.textEditingBackgroundColor,
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: "Enter details about stadium",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
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
              const SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: LocationInputWidget(onGetLocation: (selectedLocation){
                  _placeLocation = selectedLocation;
                }, name: _stadiumName.text),
              ),

              const SizedBox(height: 15,),

              const ImageInput(),

              const SizedBox(height: 15,),

              CustomButton(color: AppColors.buttonColor, text: "Submit", textColor: AppColors.white, onTap: (){})
            ],
          ),
        ),
      ),
    ) : Center(child: Text('Please wait to Admin to give you access!!!', style: TextStyle(color: AppColors.textColor),),);
  }
}
