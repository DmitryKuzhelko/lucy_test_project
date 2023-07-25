import 'package:auto_route/auto_route.dart';
import 'package:lucy_test_project/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CurrencyListRoute.page,
          initial: true,
        ),
        AutoRoute(page: SettingsRoute.page),
      ];
}
