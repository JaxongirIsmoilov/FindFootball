// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:find_football/src/features/auth/confirmation/presentation/confirm_code_page.dart'
    as _i1;
import 'package:find_football/src/features/auth/login/presentation/login_form_view.dart'
    as _i6;
import 'package:find_football/src/features/auth/login/presentation/login_page_view.dart'
    as _i7;
import 'package:find_football/src/features/auth/register/presentation/register_form_view.dart'
    as _i9;
import 'package:find_football/src/features/main/details/presentation/item_details_view.dart'
    as _i5;
import 'package:find_football/src/features/main/favotire/presentation/favorite.dart'
    as _i2;
import 'package:find_football/src/features/main/history/presentation/history.dart'
    as _i3;
import 'package:find_football/src/features/main/home/presentation/home.dart'
    as _i4;
import 'package:find_football/src/features/main/root/presentation/root_view.dart'
    as _i10;
import 'package:find_football/src/features/onboard/presentation/onboarding_page.dart'
    as _i8;
import 'package:find_football/src/features/splash/presentation/splash.dart'
    as _i11;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    ConfirmCodeView.name: (routeData) {
      final args = routeData.argsAs<ConfirmCodeViewArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ConfirmCodeView(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    FavoriteView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoriteView(),
      );
    },
    HistoryView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryView(),
      );
    },
    HomeView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
    ItemDetailsView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ItemDetailsView(),
      );
    },
    LoginFormView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginFormView(),
      );
    },
    LoginView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnBoardingView(),
      );
    },
    RegisterFormView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.RegisterFormView(),
      );
    },
    RootView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RootView(),
      );
    },
    SplashView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ConfirmCodeView]
class ConfirmCodeView extends _i12.PageRouteInfo<ConfirmCodeViewArgs> {
  ConfirmCodeView({
    _i13.Key? key,
    required String phoneNumber,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ConfirmCodeView.name,
          args: ConfirmCodeViewArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmCodeView';

  static const _i12.PageInfo<ConfirmCodeViewArgs> page =
      _i12.PageInfo<ConfirmCodeViewArgs>(name);
}

class ConfirmCodeViewArgs {
  const ConfirmCodeViewArgs({
    this.key,
    required this.phoneNumber,
  });

  final _i13.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'ConfirmCodeViewArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i2.FavoriteView]
class FavoriteView extends _i12.PageRouteInfo<void> {
  const FavoriteView({List<_i12.PageRouteInfo>? children})
      : super(
          FavoriteView.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HistoryView]
class HistoryView extends _i12.PageRouteInfo<void> {
  const HistoryView({List<_i12.PageRouteInfo>? children})
      : super(
          HistoryView.name,
          initialChildren: children,
        );

  static const String name = 'HistoryView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeView]
class HomeView extends _i12.PageRouteInfo<void> {
  const HomeView({List<_i12.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ItemDetailsView]
class ItemDetailsView extends _i12.PageRouteInfo<void> {
  const ItemDetailsView({List<_i12.PageRouteInfo>? children})
      : super(
          ItemDetailsView.name,
          initialChildren: children,
        );

  static const String name = 'ItemDetailsView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginFormView]
class LoginFormView extends _i12.PageRouteInfo<void> {
  const LoginFormView({List<_i12.PageRouteInfo>? children})
      : super(
          LoginFormView.name,
          initialChildren: children,
        );

  static const String name = 'LoginFormView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginView]
class LoginView extends _i12.PageRouteInfo<void> {
  const LoginView({List<_i12.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnBoardingView]
class OnBoardingView extends _i12.PageRouteInfo<void> {
  const OnBoardingView({List<_i12.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.RegisterFormView]
class RegisterFormView extends _i12.PageRouteInfo<void> {
  const RegisterFormView({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterFormView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterFormView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RootView]
class RootView extends _i12.PageRouteInfo<void> {
  const RootView({List<_i12.PageRouteInfo>? children})
      : super(
          RootView.name,
          initialChildren: children,
        );

  static const String name = 'RootView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashView]
class SplashView extends _i12.PageRouteInfo<void> {
  const SplashView({List<_i12.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
