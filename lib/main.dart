import 'package:RemoteManagementApp/Screens/Dashboard.dart';
import 'package:RemoteManagementApp/Screens/Docker_help.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        title: 'Remote Management App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Dashboard(),
        routes: <String, WidgetBuilder>{
          '/docker_help': (BuildContext context) => new Docker_help(),
        });
  }
}
