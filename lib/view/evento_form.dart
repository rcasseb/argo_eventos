import 'package:componente_e_navegacao/model/eventos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventoForm extends StatefulWidget {
  @override
  _EventoFormState createState() => _EventoFormState();
}

class _EventoFormState extends State<EventoForm> {
  String titulo = '';
  String descricao = '';

  _atualizarTitulo(String valor) {
    setState(() {
      titulo = valor;
    });
  }

  _atualizarDescricao(String valor) {
    setState(() {
      descricao = valor;
    });
  }

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
    final Eventos eventos = Provider.of(context);

    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) => _atualizarTitulo(value),
              decoration: InputDecoration(
                  labelText: 'Título do evento', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) => _atualizarDescricao(value),
              decoration: InputDecoration(
                  labelText: 'Descrição', border: OutlineInputBorder()),
            ),
          ),
          TextButton(
            onPressed: () {
              eventos.addEvento(titulo, descricao);
            },
            child: Text("Cadastrar Evento"),
          )
        ],
      ),
    );
  }
}
