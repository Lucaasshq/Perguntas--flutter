import 'package:flutter/material.dart';
import 'package:myproject/resultado.dart';
import 'questionario.dart';

main() {
  runApp(const PerguntaApp());
}

var _perguntaSelecionada = 0;

class _PerguntaAppState extends State<PerguntaApp> {
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelh', 'nota': 5},
        {'texto': 'Branco', 'nota': 3},
        {'texto': 'Verde', 'nota': 1}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 3},
        {'texto': 'Leão', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'resposta': [
        {'texto': 'Leo', 'nota': 10},
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'João', 'nota': 3},
        {'texto': 'Pedro', 'nota': 1},
      ]
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
/*     for (var textoResp in respostas) {
      respostas.add(Resposta(textoResp, responder));
    } */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
          backgroundColor: Colors.blue,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : const Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}
