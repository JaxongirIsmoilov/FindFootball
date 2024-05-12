import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/widgets/custom_button.dart';
import 'package:find_football/src/features/onboard/presentation/widgets/animated_dot.dart';
import 'package:find_football/src/features/onboard/presentation/widgets/onboard.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingView> {
  late int _currentPage;
  late PageController _scrollController;

  @override
  void initState() {
    _scrollController = PageController();
    _currentPage = 0;
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _scrollController,
              onPageChanged: (pageIndex) {
                setState(() {
                  _currentPage = pageIndex;
                });
              },
              itemCount: demoData.length,
              itemBuilder: (ctx, index) {
                log('Image Path -->  ${demoData[index]['image']}');
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          demoData[index]['image'],
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: OnBoard(
                        title: demoData[index]['title'],
                        description: demoData[index]['description']),
                  ),
                );
              }),
          Positioned(
            bottom: 200,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                    (index) => AnimatedDot(isActive: _currentPage == index),
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: CustomButton(
                color: AppColors.buttonColor,
                text: 'Continue',
                textColor: Colors.white,
                onTap: () {
                  if (_currentPage == demoData.length - 1) {
                    context.replaceRoute(
                      const LoginView(),
                    );
                  } else {
                    _scrollController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease);
                  }
                }),
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    'image': AppIcons.onboard1,
    'title': 'All your favorites',
    'description': 'Order best football pitch near to you',
  },
  {
    'image': AppIcons.onboard2,
    'title': 'Free and fast',
    'description': 'Easy to book and convenient payment',
  },
  {
    'image': AppIcons.onboard3,
    'title': 'Choose your favorite',
    'description':
        'Register and start to pick your football pitch. Take care of your health!'
  }
];
