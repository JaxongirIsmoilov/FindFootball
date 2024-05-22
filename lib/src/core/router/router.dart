import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashView.page, initial: true),
        AutoRoute(page: OnBoardingView.page),
        AutoRoute(page: LoginView.page),
        AutoRoute(
          page: LoginFormView.page,
        ),
        AutoRoute(page: RegisterFormView.page),
        AutoRoute(page: ConfirmCodeView.page),
        CustomRoute(
          page: RootView.page,
          children: [
            AutoRoute(page: HomeView.page),
            AutoRoute(page: FavoriteView.page),
            AutoRoute(page: HistoryView.page),
          ],
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
    AutoRoute(page: ItemDetailsView.page),
      ];
}
