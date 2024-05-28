import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/widgets/app_button.dart';
import 'package:find_football/src/core/widgets/common_text.dart';
import 'package:flutter/material.dart';

class GlobalError extends StatelessWidget {
  final String? message;
  final VoidCallback? onPressed;

  const GlobalError(
      {super.key,
      required this.message,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommText(text: message ?? "", textColor: AppColors.white,),
        const SizedBox(
          height: 32,
        ),
        AppButton(
          color: AppColors.buttonColor,
          onTap: onPressed,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cached, color: Colors.white,),
              SizedBox(width: 8,),
              CommText(text: "Refresh", fontSize: 16, textColor: AppColors.white,),
            ],
          ),
        ),
      ],
    );
  }
}
