import 'package:auto_route/auto_route.dart';
import 'package:mentea/core/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    // Login
    AutoRoute(page: RegisterRoute.page, path: '/'),
  ];
}
