import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onTap,
  });

  final Color? color;
  final String text;
  final Color? textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color ?? Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: Text(
              text,
              style: textColor != null
                  ? Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: textColor, fontSize: 18)
                  : Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
