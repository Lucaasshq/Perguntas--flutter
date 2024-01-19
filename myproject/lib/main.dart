import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'teste'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Perguntas")),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Gato'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Cachorro'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Lontra'),
            ),
          ],
        ),
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
