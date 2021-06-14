import 'package:componente_e_navegacao/model/evento.dart';
import 'package:flutter/material.dart';

class EventoShow extends StatelessWidget {
  final Evento evento;

  const EventoShow({this.evento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Evento"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text('Tema: $evento.titulo'),
              Text('Assunto: $evento.descricao'),
            ],
          ),
        ),
      ),
    );
  }
}
