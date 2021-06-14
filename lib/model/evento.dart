import 'package:flutter/material.dart';

class Evento {
  final String id;
  final String titulo;
  final String descricao;

  const Evento({
    this.id,
    @required this.titulo,
    @required this.descricao,
  });
}
