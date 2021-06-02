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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Icon(Icons.event),
                accountName: Text("Eventos"),
                accountEmail: Text("argo@cesupa.br")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Lista de eventos do Cesupa"),
              enabled: false,
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Novo Evento"),
              subtitle: Text("Adicionar evento a lista"),
              onTap: () {
                Navigator.pushNamed(context, "novo");
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
      body: _lista(),
    );
  }

  Widget _lista() {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.event),
          title: Text("TESTE TESTE"),
          subtitle: Text("Teste de item de lista"),
          onTap: () {
            Navigator.pushNamed(context, "detalhes");
          },
          trailing: Icon(Icons.delete),
        ),
      ],
    );
  }
}
