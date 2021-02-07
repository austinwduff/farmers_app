import 'package:flutter/material.dart';
import 'package:flutter_app/net.dart';
import 'package:http/http.dart' as http;
import 'netutil.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Only Farmers"),
        ),
        body: new Text(
          NetUtil.getString(NetUtil.KEY_USERID)
        ),
    );
  }
}