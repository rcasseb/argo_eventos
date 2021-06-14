import 'package:flutter/material.dart';

class Menu {
  Widget _body;

  Menu(this._body);

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Lista de evento Cesupa"),
              onTap: () {
                print("cliquei no home");
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Novo Evento"),
              subtitle: Text("Adicionar evento a lista"),
              onTap: () {
                print("cliquei no home");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "login");
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Eventos - Cesupa Argo"),
      ),
      body: _body,
    );
  }
}
