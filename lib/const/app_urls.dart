import 'package:college_buddy_admin/const/env/env.dart';
class AppUrls {
  AppUrls._();

  static const String devBaseUrl = Env.developmentBaseUrl;
  static const String studentApiURL = "/student";
  static const String addstudentURL = "$studentApiURL/register";
  // static const String addAlllibraryDetailsURL = "$studentApiURL/register";
  // static const String addlibraryDetailsURL = "$studentApiURL/register";
}
