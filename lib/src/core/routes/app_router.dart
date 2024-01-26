import 'package:auto_route/auto_route.dart';

import 'app_router.dart';

export 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: DashboardRoute.page, initial: true, children: [
      AutoRoute(page: BlogsRoute.page),
      AutoRoute(page: SearchRoute.page),
      AutoRoute(page: PlatformChannelRoute.page),
    ]),
  ];
}
