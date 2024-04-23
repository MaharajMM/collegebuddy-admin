// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:college_buddy_admin/features/home/view/home_page.dart' as _i12;
import 'package:college_buddy_admin/features/login/view/login_page.dart' deferred as _i14;
import 'package:college_buddy_admin/features/settings/view/settings_page.dart' as _i17;
import 'package:college_buddy_admin/features/account/view/account_page.dart' as _i1;
import 'package:college_buddy_admin/features/add_notice/view/add_notice_page.dart' as _i3;
import 'package:college_buddy_admin/features/admin/view/admin_page.dart' as _i5;
import 'package:college_buddy_admin/features/attendance/view/attendance_page.dart' as _i6;
import 'package:college_buddy_admin/features/counter/view/counter_page.dart' deferred as _i9;
import 'package:college_buddy_admin/features/dashboard/view/dashboard_page.dart' as _i10;
import 'package:college_buddy_admin/features/exam/view/exam_page.dart' as _i11;
import 'package:college_buddy_admin/features/library/view/book-request/book_requests_page.dart'
    as _i7;
import 'package:college_buddy_admin/features/library/view/book_shelf/add_books_page.dart' as _i2;
import 'package:college_buddy_admin/features/library/view/book_shelf/book_shelf_page.dart' as _i8;
import 'package:college_buddy_admin/features/library/view/library_page.dart' as _i13;
import 'package:college_buddy_admin/features/notes/view/notes_page.dart' as _i15;
import 'package:college_buddy_admin/features/notice/view/notice_page.dart' as _i16;
import 'package:college_buddy_admin/features/students/add_student_view/view/add_student_page.dart'
    as _i4;
import 'package:college_buddy_admin/features/students/all_students/view/students_page.dart' as _i18;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    AddBooksRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddBooksPage(),
      );
    },
    AddNoticeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddNoticePage(),
      );
    },
    AddStudentRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AddStudentPage(),
      );
    },
    AdminRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AdminPage(),
      );
    },
    AttendanceRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AttendancePage(),
      );
    },
    BookRequestsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.BookRequestsPage(),
      );
    },
    BookShelfRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.BookShelfPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.CounterPage(),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DashboardPage(),
      );
    },
    ExamRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ExamPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HomePage(),
      );
    },
    LibraryRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.LibraryPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.DeferredWidget(
          _i14.loadLibrary,
          () => _i14.LoginPage(),
        ),
      );
    },
    NotesRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.NotesPage(),
      );
    },
    NoticeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.NoticePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SettingsPage(),
      );
    },
    StudentsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.StudentsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddBooksPage]
class AddBooksRoute extends _i19.PageRouteInfo<void> {
  const AddBooksRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AddBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBooksRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddNoticePage]
class AddNoticeRoute extends _i19.PageRouteInfo<void> {
  const AddNoticeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AddNoticeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNoticeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AddStudentPage]
class AddStudentRoute extends _i19.PageRouteInfo<void> {
  const AddStudentRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AddStudentRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddStudentRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AdminPage]
class AdminRoute extends _i19.PageRouteInfo<void> {
  const AdminRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AttendancePage]
class AttendanceRoute extends _i19.PageRouteInfo<void> {
  const AttendanceRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.BookRequestsPage]
class BookRequestsRoute extends _i19.PageRouteInfo<void> {
  const BookRequestsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          BookRequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookRequestsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.BookShelfPage]
class BookShelfRoute extends _i19.PageRouteInfo<void> {
  const BookShelfRoute({List<_i19.PageRouteInfo>? children})
      : super(
          BookShelfRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookShelfRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CounterPage]
class CounterRoute extends _i19.PageRouteInfo<void> {
  const CounterRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.DashboardPage]
class DashboardRoute extends _i19.PageRouteInfo<void> {
  const DashboardRoute({List<_i19.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ExamPage]
class ExamRoute extends _i19.PageRouteInfo<void> {
  const ExamRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExamRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.LibraryPage]
class LibraryRoute extends _i19.PageRouteInfo<void> {
  const LibraryRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.NotesPage]
class NotesRoute extends _i19.PageRouteInfo<void> {
  const NotesRoute({List<_i19.PageRouteInfo>? children})
      : super(
          NotesRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotesRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.NoticePage]
class NoticeRoute extends _i19.PageRouteInfo<void> {
  const NoticeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          NoticeRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoticeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SettingsPage]
class SettingsRoute extends _i19.PageRouteInfo<void> {
  const SettingsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.StudentsPage]
class StudentsRoute extends _i19.PageRouteInfo<void> {
  const StudentsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          StudentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
