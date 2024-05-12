import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  const AdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              AppIcons.adImage1,
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
    );
  }
}
