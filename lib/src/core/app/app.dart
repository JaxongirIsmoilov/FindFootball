import 'package:find_football/src/core/router/router.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:find_football/src/features/auth/confirmation/presentation/verify_bloc/verify_bloc.dart';
import 'package:find_football/src/features/auth/login/presentation/login_bloc/login_bloc.dart';
import 'package:find_football/src/features/auth/register/presentation/register_bloc/register_bloc.dart';
import 'package:find_football/src/features/main/add_ad/presentation/bloc/add_ad_bloc.dart';
import 'package:find_football/src/features/main/home/presentation/bloc/home_bloc.dart';
import 'package:find_football/src/features/main/profile/presentation/bloc/profile_bloc.dart';
import 'package:find_football/src/features/main/root/presentation/bloc/root_bloc.dart';
import 'package:find_football/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:find_football/src/features/theme/presentation/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/di.dart';
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
    // FocusScope.of(context).unfocus();
    WidgetsBinding.instance.addObserver(this);
    // FocusManager.instance.primaryFocus?.unfocus();
    int getDeviceType() {
      final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
      AppUtils.isTable = data.size.shortestSide < 600 ? false : true;
      return data.size.shortestSide < 600 ? 1 : 2;
    }
    HiveService.saveUserSeenOnBoarding(true);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1.0),
      ),
      child: ScreenUtilInit(
        designSize:
            getDeviceType() == 1 ? const Size(375, 812) : const Size(600, 1024),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>.value(
              value: di.get<LoginBloc>(),
            ),
            BlocProvider<RegisterBloc>.value(
              value: di.get<RegisterBloc>(),
            ),
            BlocProvider<VerifyBloc>.value(
              value: di.get<VerifyBloc>(),
            ),
            BlocProvider<RootBloc>.value(
              value: di.get<RootBloc>(),
            ),
            BlocProvider<HomeBloc>.value(
              value: di.get<HomeBloc>(),
            ),
            BlocProvider<AddAdBloc>.value(
              value: di.get<AddAdBloc>(),
            ),
            BlocProvider<ProfileBloc>.value(
              value: di.get<ProfileBloc>(),
            ),
          ],
          child: BlocProvider<ThemeCubit>(
            create: (context) => ThemeCubit(),
            child: BlocBuilder<ThemeCubit, ThemeState>(builder: (ctx, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: state.themeData,
                routerConfig: _appRouter.config(),
              );
            }),
          ),
        ),
      ),
    );
  }
}
