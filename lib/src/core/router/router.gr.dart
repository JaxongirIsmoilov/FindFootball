// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:find_football/src/features/auth/confirmation/presentation/confirm_code_page.dart'
    as _i2;
import 'package:find_football/src/features/auth/login/presentation/login_form_view.dart'
    as _i7;
import 'package:find_football/src/features/auth/login/presentation/login_page_view.dart'
    as _i8;
import 'package:find_football/src/features/auth/register/presentation/register_form_view.dart'
    as _i11;
import 'package:find_football/src/features/main/add_ad/presentation/add_ad_view.dart'
    as _i1;
import 'package:find_football/src/features/main/details/presentation/item_details_view.dart'
    as _i6;
import 'package:find_football/src/features/main/favotire/presentation/favorite.dart'
    as _i3;
import 'package:find_football/src/features/main/history/presentation/history.dart'
    as _i4;
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart'
    as _i17;
import 'package:find_football/src/features/main/home/presentation/home.dart'
    as _i5;
import 'package:find_football/src/features/main/profile/data/models/response/profile_success.dart'
    as _i18;
import 'package:find_football/src/features/main/profile/presentation/profile_view.dart'
    as _i10;
import 'package:find_football/src/features/main/root/presentation/root_view.dart'
    as _i12;
import 'package:find_football/src/features/onboard/presentation/onboarding_page.dart'
    as _i9;
import 'package:find_football/src/features/splash/presentation/splash.dart'
    as _i13;
import 'package:flutter/cupertino.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AddAdView.name: (routeData) {
      final args = routeData.argsAs<AddAdViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddAdView(
          key: args.key,
          isUserHost: args.isUserHost,
        ),
      );
    },
    ConfirmCodeView.name: (routeData) {
      final args = routeData.argsAs<ConfirmCodeViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ConfirmCodeView(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    FavoriteView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoriteView(),
      );
    },
    HistoryView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HistoryView(),
      );
    },
    HomeView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeView(),
      );
    },
    ItemDetailsView.name: (routeData) {
      final args = routeData.argsAs<ItemDetailsViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ItemDetailsView(
          key: args.key,
          allStadiumsSuccess: args.allStadiumsSuccess,
          address: args.address,
        ),
      );
    },
    LoginFormView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginFormView(),
      );
    },
    LoginView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnBoardingView(),
      );
    },
    ProfileView.name: (routeData) {
      final args = routeData.argsAs<ProfileViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ProfileView(
          key: args.key,
          profileSuccess: args.profileSuccess,
          isUserHost: args.isUserHost,
        ),
      );
    },
    RegisterFormView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RegisterFormView(),
      );
    },
    RootView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RootView(),
      );
    },
    SplashView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddAdView]
class AddAdView extends _i14.PageRouteInfo<AddAdViewArgs> {
  AddAdView({
    _i15.Key? key,
    required bool isUserHost,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          AddAdView.name,
          args: AddAdViewArgs(
            key: key,
            isUserHost: isUserHost,
          ),
          initialChildren: children,
        );

  static const String name = 'AddAdView';

  static const _i14.PageInfo<AddAdViewArgs> page =
      _i14.PageInfo<AddAdViewArgs>(name);
}

class AddAdViewArgs {
  const AddAdViewArgs({
    this.key,
    required this.isUserHost,
  });

  final _i15.Key? key;

  final bool isUserHost;

  @override
  String toString() {
    return 'AddAdViewArgs{key: $key, isUserHost: $isUserHost}';
  }
}

/// generated route for
/// [_i2.ConfirmCodeView]
class ConfirmCodeView extends _i14.PageRouteInfo<ConfirmCodeViewArgs> {
  ConfirmCodeView({
    _i16.Key? key,
    required String phoneNumber,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ConfirmCodeView.name,
          args: ConfirmCodeViewArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmCodeView';

  static const _i14.PageInfo<ConfirmCodeViewArgs> page =
      _i14.PageInfo<ConfirmCodeViewArgs>(name);
}

class ConfirmCodeViewArgs {
  const ConfirmCodeViewArgs({
    this.key,
    required this.phoneNumber,
  });

  final _i16.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'ConfirmCodeViewArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i3.FavoriteView]
class FavoriteView extends _i14.PageRouteInfo<void> {
  const FavoriteView({List<_i14.PageRouteInfo>? children})
      : super(
          FavoriteView.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HistoryView]
class HistoryView extends _i14.PageRouteInfo<void> {
  const HistoryView({List<_i14.PageRouteInfo>? children})
      : super(
          HistoryView.name,
          initialChildren: children,
        );

  static const String name = 'HistoryView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeView]
class HomeView extends _i14.PageRouteInfo<void> {
  const HomeView({List<_i14.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ItemDetailsView]
class ItemDetailsView extends _i14.PageRouteInfo<ItemDetailsViewArgs> {
  ItemDetailsView({
    _i16.Key? key,
    required _i17.AllStadiumsSuccess allStadiumsSuccess,
    required String address,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ItemDetailsView.name,
          args: ItemDetailsViewArgs(
            key: key,
            allStadiumsSuccess: allStadiumsSuccess,
            address: address,
          ),
          initialChildren: children,
        );

  static const String name = 'ItemDetailsView';

  static const _i14.PageInfo<ItemDetailsViewArgs> page =
      _i14.PageInfo<ItemDetailsViewArgs>(name);
}

class ItemDetailsViewArgs {
  const ItemDetailsViewArgs({
    this.key,
    required this.allStadiumsSuccess,
    required this.address,
  });

  final _i16.Key? key;

  final _i17.AllStadiumsSuccess allStadiumsSuccess;

  final String address;

  @override
  String toString() {
    return 'ItemDetailsViewArgs{key: $key, allStadiumsSuccess: $allStadiumsSuccess, address: $address}';
  }
}

/// generated route for
/// [_i7.LoginFormView]
class LoginFormView extends _i14.PageRouteInfo<void> {
  const LoginFormView({List<_i14.PageRouteInfo>? children})
      : super(
          LoginFormView.name,
          initialChildren: children,
        );

  static const String name = 'LoginFormView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginView]
class LoginView extends _i14.PageRouteInfo<void> {
  const LoginView({List<_i14.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnBoardingView]
class OnBoardingView extends _i14.PageRouteInfo<void> {
  const OnBoardingView({List<_i14.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfileView]
class ProfileView extends _i14.PageRouteInfo<ProfileViewArgs> {
  ProfileView({
    _i15.Key? key,
    required _i18.ProfileSuccess profileSuccess,
    required bool isUserHost,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ProfileView.name,
          args: ProfileViewArgs(
            key: key,
            profileSuccess: profileSuccess,
            isUserHost: isUserHost,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileView';

  static const _i14.PageInfo<ProfileViewArgs> page =
      _i14.PageInfo<ProfileViewArgs>(name);
}

class ProfileViewArgs {
  const ProfileViewArgs({
    this.key,
    required this.profileSuccess,
    required this.isUserHost,
  });

  final _i15.Key? key;

  final _i18.ProfileSuccess profileSuccess;

  final bool isUserHost;

  @override
  String toString() {
    return 'ProfileViewArgs{key: $key, profileSuccess: $profileSuccess, isUserHost: $isUserHost}';
  }
}

/// generated route for
/// [_i11.RegisterFormView]
class RegisterFormView extends _i14.PageRouteInfo<void> {
  const RegisterFormView({List<_i14.PageRouteInfo>? children})
      : super(
          RegisterFormView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterFormView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RootView]
class RootView extends _i14.PageRouteInfo<void> {
  const RootView({List<_i14.PageRouteInfo>? children})
      : super(
          RootView.name,
          initialChildren: children,
        );

  static const String name = 'RootView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SplashView]
class SplashView extends _i14.PageRouteInfo<void> {
  const SplashView({List<_i14.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
