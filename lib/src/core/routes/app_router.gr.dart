// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ag_test/src/features/blogs/presentation/pages/blogs_page.dart'
    as _i1;
import 'package:ag_test/src/features/dashboard/presentation/pages/dashboard_page.dart'
    as _i2;
import 'package:ag_test/src/features/platform_channel/presentation/pages/platform_channel_page.dart'
    as _i3;
import 'package:ag_test/src/features/search/presentation/pages/search_page.dart'
    as _i4;
import 'package:auto_route/auto_route.dart' as _i5;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BlogsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BlogsPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    PlatformChannelRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PlatformChannelPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SearchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BlogsPage]
class BlogsRoute extends _i5.PageRouteInfo<void> {
  const BlogsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BlogsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PlatformChannelPage]
class PlatformChannelRoute extends _i5.PageRouteInfo<void> {
  const PlatformChannelRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PlatformChannelRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlatformChannelRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SearchPage]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
