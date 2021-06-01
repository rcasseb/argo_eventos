import 'package:flutter/material.dart';

import 'lista.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      initialRoute: 'login',
      routes: {
        'login': (context) => Login(),
        'lista': (context) => Lista(),
      },
    );
  }
}