import 'package:flutter/material.dart';
import 'package:myproject/resultado.dart';
import './questao.dart';
import 'resposta.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': ['Preto', 'Vermelho', 'Branco', 'Verde']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'resposta': ['Maria', 'João', 'Leo', 'Pedro']
    }
  ];

  void responder() {
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
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['resposta']
        : [];

/*     for (var textoResp in respostas) {
      respostas.add(Resposta(textoResp, responder));
    } */

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Quiz")),
          body: temPerguntaSelecionada
              ? Column(
                  children: <Widget>[
                    Questao(
                        _perguntas[_perguntaSelecionada]['texto'].toString()),
                    ...respostas.map((texto) => Resposta(texto, responder)),
                  ],
                )
              : const Resultado()),
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
