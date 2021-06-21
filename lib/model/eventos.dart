import 'dart:convert';

import 'package:componente_e_navegacao/model/evento.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpApi;

class Eventos with ChangeNotifier {
  static const url = "https://argo-dfc03-default-rtdb.firebaseio.com/";
  final List<Evento> lista = [];

  List<Evento> getEventos() {
    return lista;
  }

  int getTotal() {
    return lista.length;
  }

  void addEvento(String titulo, String descricao) {
    Evento novo = Evento('3', titulo, descricao);

    EVENTOS.putIfAbsent('4', () => novo);
    notifyListeners();

    httpApi.post(
      Uri.parse('$url/eventos.json'),
      body: jsonEncode({
        'id': novo.id,
        'titulo': novo.titulo,
        'descricao': novo.descricao,
      }),
    );
  }
}

final EVENTOS = {
  '1': Evento(
    '1',
    "Computacao Amostra",
    "Feira de tecnologia",
  ),
  '2': Evento(
    '2',
    "Projeto Integrado",
    "Escola de tecnologia aplicada",
  ),
};
