import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(page: CounterRoute.page, path: '/counter'),
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      // path: '/home',
      initial: true,
    ),
    AutoRoute(
      page: LoginRoute.page,
      path: '/login',
      // initial: true,
    ),
    AutoRoute(page: SettingsRoute.page, path: '/settings'),
    AutoRoute(
      page: AddStudentRoute.page,
      path: '/add-student',
      // path: '/',
    ),
  ];
}
