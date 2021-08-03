import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

class Questionario2 extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario2(
    this.perguntas,
    this.perguntaSelecionada,
    this.responder,
  );

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((texto) => Respostas(texto, responder)).toList()
      ],
    );
  }
}
