import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.backgroundColor,required this.prefixIcon,required this.hintText, required this.controller,});
  final Color backgroundColor;
  final TextEditingController controller;
  final String hintText;
  final Icon prefixIcon;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width / 1.7,
      // color: Colors.grey,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: AppColors.textColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          prefixIcon: prefixIcon,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.singleLineFormatter,
          LengthLimitingTextInputFormatter(16),
        ],
        onChanged: (value) {},
      ),
    );
  }
}
