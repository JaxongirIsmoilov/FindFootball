import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/core/mixins/after_layout_mixin.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with AfterLayoutMixin {
  @override
  void afterFirstLayout(BuildContext context) async {
    FlutterNativeSplash.remove();
    await Future.delayed(
      const Duration(seconds: 2),
    );
    await authCheck();
  }

  Future<void> authCheck() async {
    if(await HiveService.isUserVerified()){
      context.replaceRoute(HomeView());
    }else{
      await context.replaceRoute(const OnBoardingView());
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: CupertinoPageScaffold(
          child: Stack(
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
                decoration:  BoxDecoration(
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

            ],
          ),
        ));
  }
}
