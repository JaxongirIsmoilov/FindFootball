import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/add_ad_bloc.dart';

class CustomDropDown extends StatefulWidget {
  final String selectedValue;
  final bool isDropdownOpen;
  CustomDropDown(
      {super.key,
      required this.districts,
      required this.onChanged,
      required this.selectedValue,
      required this.isDropdownOpen});

  final List<String> districts;
  final Function(String? value) onChanged;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.textEditingBackgroundColor,
        border: Border.all(color: AppColors.cardColor),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          dropdownStyleData: DropdownStyleData(
            direction: DropdownDirection.right,
            maxHeight: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            width: MediaQuery.of(context).size.width - 32,
            offset: const Offset(-12, 268),
          ),
          isExpanded: true,
          hint: Text(
            "Select district which stadium is located",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          // onMenuStateChange: (bool isDropdownOpen) {
          //   // setState(() {
          //   //   this.isDropdownOpen = isDropdownOpen;
          //   // });
          // },
          items: widget.districts
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ))
              .toList(),
          value: widget.selectedValue,
          onChanged: (value) {
            // setState(() {
            //   widget.selectedValue = value;
            // });
            widget.onChanged(value);
          },
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 60,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          menuItemStyleData: MenuItemStyleData(
            customHeights:
                List<double>.generate(widget.districts.length, (index) => 48),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(Icons.arrow_downward_sharp),
            openMenuIcon: Icon(Icons.arrow_drop_up),
          ),
        ),
      ),
    );
  }
}
