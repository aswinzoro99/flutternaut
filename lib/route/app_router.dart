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
        ),
      ];
}
