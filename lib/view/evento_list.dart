import 'package:componente_e_navegacao/component/evento_tile.dart';
import 'package:componente_e_navegacao/model/eventos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventoList extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<EventoList> {
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
                Navigator.pushNamed(context, "form");
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
    final Eventos eventos = Provider.of(context);

    return ListView.builder(
        itemCount: eventos.getTotal(),
        itemBuilder: (ctx, i) => EventoTile(
              eventos.getEventos().elementAt(i),
            ));
  }
}
