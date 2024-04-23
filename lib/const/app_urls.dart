import 'package:college_buddy_admin/const/env/env.dart';

/// This class helping putting all
/// the urls needed in apps
class AppUrls {
  AppUrls._();

  static const String devBaseUrl = Env.developmentBaseUrl;
  static const String studentApiURL = "/student";
  static const String addstudentURL = "$studentApiURL/register";
  static const String noticeApiURL = "/notice";
}
