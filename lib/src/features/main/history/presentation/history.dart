import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('History', style: TextStyle(color: Colors.white),));
  }
}
