
import 'dart:convert';
import 'dart:html';

import 'package:flutter_app/netutil.dart';

class NetResponse {

  static void handleRegisterResponse(String body) {
    Map<String, String> map = jsonDecode(body);
    if (map.containsKey('success')) {
      NetUtil.activeUserId = map[0].split("*")[1];
    }
  }

}

class ResponseRegister {
  String userId;
}