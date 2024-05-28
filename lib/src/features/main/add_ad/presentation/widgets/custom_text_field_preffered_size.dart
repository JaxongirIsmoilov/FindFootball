import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldPref extends StatelessWidget {
  const CustomTextFieldPref({super.key, required this.controller, required this.hintText, required this.prefixIcon, required this.backgroundColor, required this.width, required this.height, required this.keyboardType,});
  final TextEditingController controller;
  final double? width;
  final double? height;
  final String? hintText;
  final TextInputType? keyboardType;
  final Icon? prefixIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 56,
      width: width ?? MediaQuery.of(context).size.width / 1.12,
      // color: Colors.grey,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(color:  AppColors.textColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 15),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          prefixIcon: prefixIcon,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.singleLineFormatter,
          LengthLimitingTextInputFormatter(40),
        ],
        onChanged: (value) {},
      ),
    );
  }
}
