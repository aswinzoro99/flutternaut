import 'package:auto_route/auto_route.dart';
import 'package:flutternaut_frontend_webapp/route/routes.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          path: Routes.root,
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: Routes.home,
              initial: false,
            ),
            AutoRoute(
              page: AboutRoute.page,
              path: Routes.about,
              initial: false,
            ),
            AutoRoute(
              page: ServicesRoute.page,
              path: Routes.services,
              initial: false,
            ),
            AutoRoute(
              page: WorksRoute.page,
              path: Routes.works,
              initial: false,
            ),
            AutoRoute(
              page: ContactsRoute.page,
              path: Routes.contact,
              initial: false,
            ),
          ],
        ),
      ];
}
