import 'package:college_buddy_admin/const/env/env.dart';

class AppUrls {
  AppUrls._();

  static const String devBaseUrl = Env.developmentBaseUrl;
  static const String studentApiURL = "/student";
  static const String addstudentURL = "$studentApiURL/register";
  static const String noticeApiURL = "/notice";

  static editNotice({required String noticeId}) {
    final apiUrl = '$noticeApiURL/$noticeId';
    return apiUrl;
  }

  static const String libraryApiUrl = "/admin/library";
  // static const String addlibraryDetailsURL = "$studentApiURL/register";
}
