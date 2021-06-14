import 'dart:html';

import 'package:componente_e_navegacao/view/evento_show.dart';
import 'package:componente_e_navegacao/view/evento_form.dart';
import 'package:flutter/material.dart';

import 'view/evento_list.dart';
import 'view/login.dart';

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
        'list': (context) => EventoList(),
        'form': (context) => EventoForm(),
        'show': (context) => EventoShow(),
      },
    );
  }
}
