import 'package:find_football/src/core/router/router.dart';
import 'package:find_football/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:find_football/src/features/theme/presentation/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_utils.dart';

class App extends StatelessWidget with WidgetsBindingObserver {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      //Internet service active
    } else if (state == AppLifecycleState.inactive) {
    } else if (state == AppLifecycleState.detached) {
    } else if (state == AppLifecycleState.paused) {
      //Internet service pause
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);
    int getDeviceType() {
      final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
      AppUtils.isTable = data.size.shortestSide < 600 ? false : true;
      return data.size.shortestSide < 600 ? 1 : 2;
    }

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1.0),
      ),
      child: ScreenUtilInit(
        designSize: getDeviceType() == 1 ? const Size(375, 812) : const Size(600, 1024),
        child: BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (ctx, state) {
             return MaterialApp.router(
               debugShowCheckedModeBanner: false,
               theme: state.themeData,
               routerConfig: _appRouter.config(),
             );
            }
          ),
        ),
      ),
    );
  }
}
