import 'dart:io';

import 'package:devs_team_test/res/string_const.dart';

class HttpConnection {
  static bool isConnection = false;

  static Future<void> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup(GOOGLE_COM);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print(CONNECTED);
        HttpConnection.isConnection = true;
        return;
      }
    } on SocketException catch (_) {
      print(NOT_CONNECTED);
    }
    HttpConnection.isConnection = false;
  }
}
