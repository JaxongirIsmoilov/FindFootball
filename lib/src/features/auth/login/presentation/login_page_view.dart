import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/consts/icons/app_icons.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppIcons.splash),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.splashLogo),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: CustomButton(
                color: AppColors.buttonColor,
                text: 'Sign In',
                textColor: AppColors.white,
                onTap: () {
                  context.pushRoute(const LoginFormView(),);
                }),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: TextButton(
              onPressed: () {
                context.pushRoute(const RegisterFormView(),);
              },
              child: Text(
                'Registration',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
