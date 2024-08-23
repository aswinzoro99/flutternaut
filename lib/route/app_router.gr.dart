// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutternaut_frontend_webapp/presentation/pages/about_screen/about_screen.dart'
    as _i1;
import 'package:flutternaut_frontend_webapp/presentation/pages/contacts_screen/contacts_screen.dart'
    as _i2;
import 'package:flutternaut_frontend_webapp/presentation/pages/home_screen/home_screen.dart'
    as _i3;
import 'package:flutternaut_frontend_webapp/presentation/pages/root_screen/root_screen.dart'
    as _i4;
import 'package:flutternaut_frontend_webapp/presentation/pages/services_screen/services_screen.dart'
    as _i5;
import 'package:flutternaut_frontend_webapp/presentation/pages/works_screen/works_screen.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    ContactsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ContactsScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    RootRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: const _i4.RootScreen()),
      );
    },
    ServicesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ServicesScreen(),
      );
    },
    WorksRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.WorksScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i7.PageRouteInfo<void> {
  const AboutRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ContactsScreen]
class ContactsRoute extends _i7.PageRouteInfo<void> {
  const ContactsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RootScreen]
class RootRoute extends _i7.PageRouteInfo<void> {
  const RootRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ServicesScreen]
class ServicesRoute extends _i7.PageRouteInfo<void> {
  const ServicesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.WorksScreen]
class WorksRoute extends _i7.PageRouteInfo<void> {
  const WorksRoute({List<_i7.PageRouteInfo>? children})
      : super(
          WorksRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorksRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
