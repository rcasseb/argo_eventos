import 'package:componente_e_navegacao/model/evento.dart';
import 'package:flutter/material.dart';

class EventoTile extends StatelessWidget {
  final Evento evento;

  const EventoTile(this.evento);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.event),
      ),
      title: Text(evento.titulo),
      subtitle: Text(evento.descricao),
      trailing: Container(
        width: 130,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                Navigator.pushNamed(context, 'show');
              },
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
              color: Colors.green,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
