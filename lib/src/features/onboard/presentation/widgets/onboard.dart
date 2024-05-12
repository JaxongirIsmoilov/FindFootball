import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({
    super.key,
    // required this.image,
    required this.title,
    required this.description,
  });

  // final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
        const SizedBox(height: 8,),
        Text(description, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey), textAlign: TextAlign.center,),

      ],
    );
  }
}
