import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  bool cheked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LISTA"),
        actions: [
          Checkbox(
              value: cheked,
              onChanged: (value) {
                setState(() {
                  cheked = !cheked;
                });
              }),
          Switch(value: true, onChanged: (value) {}),
          Checkbox(value: true, onChanged: (value) {}),
        ],
      ),
      body: Center(),
    );
    ;
  }
}
