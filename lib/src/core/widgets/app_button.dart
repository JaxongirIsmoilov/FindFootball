import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color? color;
  final Function()? onTap;
  final Widget? child;
  const AppButton({super.key,required this.color,
    required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          child: child,
        ),
      ),
    );
  }
}
