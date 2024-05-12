// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:find_football/src/features/auth/login/presentation/login_form_view.dart'
    as _i4;
import 'package:find_football/src/features/auth/login/presentation/login_page_view.dart'
    as _i5;
import 'package:find_football/src/features/auth/register/presentation/register_form_view.dart'
    as _i7;
import 'package:find_football/src/features/main/favotire/presentation/favorite.dart'
    as _i1;
import 'package:find_football/src/features/main/history/presentation/history.dart'
    as _i2;
import 'package:find_football/src/features/main/home/presentation/home.dart'
    as _i3;
import 'package:find_football/src/features/main/root/presentation/root_view.dart'
    as _i8;
import 'package:find_football/src/features/onboard/presentation/onboarding_page.dart'
    as _i6;
import 'package:find_football/src/features/splash/presentation/splash.dart'
    as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    FavoriteView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FavoriteView(),
      );
    },
    HistoryView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HistoryView(),
      );
    },
    HomeView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    LoginFormView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginFormView(),
      );
    },
    LoginView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingView(),
      );
    },
    RegisterFormView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterFormView(),
      );
    },
    RootView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RootView(),
      );
    },
    SplashView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.FavoriteView]
class FavoriteView extends _i10.PageRouteInfo<void> {
  const FavoriteView({List<_i10.PageRouteInfo>? children})
      : super(
          FavoriteView.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HistoryView]
class HistoryView extends _i10.PageRouteInfo<void> {
  const HistoryView({List<_i10.PageRouteInfo>? children})
      : super(
          HistoryView.name,
          initialChildren: children,
        );

  static const String name = 'HistoryView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i10.PageRouteInfo<void> {
  const HomeView({List<_i10.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginFormView]
class LoginFormView extends _i10.PageRouteInfo<void> {
  const LoginFormView({List<_i10.PageRouteInfo>? children})
      : super(
          LoginFormView.name,
          initialChildren: children,
        );

  static const String name = 'LoginFormView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginView]
class LoginView extends _i10.PageRouteInfo<void> {
  const LoginView({List<_i10.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardingView]
class OnBoardingView extends _i10.PageRouteInfo<void> {
  const OnBoardingView({List<_i10.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterFormView]
class RegisterFormView extends _i10.PageRouteInfo<void> {
  const RegisterFormView({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterFormView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterFormView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RootView]
class RootView extends _i10.PageRouteInfo<void> {
  const RootView({List<_i10.PageRouteInfo>? children})
      : super(
          RootView.name,
          initialChildren: children,
        );

  static const String name = 'RootView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashView]
class SplashView extends _i10.PageRouteInfo<void> {
  const SplashView({List<_i10.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
