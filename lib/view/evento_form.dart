import 'package:flutter/material.dart';

class EventoForm extends StatelessWidget {
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
              onTap: () {
                Navigator.pushNamed(context, 'list');
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Novo Evento"),
              subtitle: Text("Adicionar evento a lista"),
              enabled: false,
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
        title: Text("Adicionar novo evento"),
      ),
      body: _form(),
    );
  }

  Widget _form() {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Título do evento', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Assunto', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: 'Data do evento',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Cadastrar Evento"),
          )
        ],
      ),
    );
  }
}
