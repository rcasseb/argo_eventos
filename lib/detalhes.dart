import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final String tema;
  final String assunto;
  final String data;

  const Detalhes({Key key, this.tema, this.assunto, this.data})
      : super(key: key);

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
              Text('Tema: $tema'),
              Text('Assunto: $assunto'),
              Text('Data: $data'),
            ],
          ),
        ),
      ),
    );
  }
}
