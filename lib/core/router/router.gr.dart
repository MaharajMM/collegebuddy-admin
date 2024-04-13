// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:college_buddy_admin/features/admin/view/admin_page.dart' as _i2;
import 'package:college_buddy_admin/features/counter/view/counter_page.dart'
    deferred as _i3;
import 'package:college_buddy_admin/features/dashboard/view/dashboard_page.dart'
    as _i4;
import 'package:college_buddy_admin/features/home/view/home_page.dart' as _i5;
import 'package:college_buddy_admin/features/login/view/login_page.dart'
    deferred as _i6;
import 'package:college_buddy_admin/features/settings/view/settings_page.dart'
    as _i7;
import 'package:college_buddy_admin/features/students/add_student_view/view/add_student_page.dart'
    as _i1;
import 'package:college_buddy_admin/features/students/view/students_page.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AddStudentRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddStudentPage(),
      );
    },
    AdminRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AdminPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.CounterPage(),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.LoginPage(),
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsPage(),
      );
    },
    StudentsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.StudentsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddStudentPage]
class AddStudentRoute extends _i9.PageRouteInfo<void> {
  const AddStudentRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AddStudentRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddStudentRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminPage]
class AdminRoute extends _i9.PageRouteInfo<void> {
  const AdminRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CounterPage]
class CounterRoute extends _i9.PageRouteInfo<void> {
  const CounterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.StudentsPage]
class StudentsRoute extends _i9.PageRouteInfo<void> {
  const StudentsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          StudentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
