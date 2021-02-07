import 'dart:io';

import 'package:flutter_app/netutil.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
    static final NetworkManager _networkManager = NetworkManager._internal();

    factory NetworkManager() {
      return _networkManager;
    }

    NetworkManager._internal();

    Future<String> register(String email, String password) async {
      var queryParameters = {
        'email': email,
        'password': password,
      };
      final response = await http.post(Uri.http(NetUtil.URL_API_BASE, NetUtil.URL_REGISTER_LOGIN, queryParameters));
      print(response.statusCode);
      switch(response.statusCode) {
        case 200: {
          return response.body;
        }
        default: {
          return null;
        }
      }
    }
}