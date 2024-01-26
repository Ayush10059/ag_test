import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetConnectionHelper {
  static late final InternetConnectionChecker _internetChecker =
      InternetConnectionChecker();

  static Future<bool> checkConnection() async {
    return await _internetChecker.hasConnection;
  }
}
