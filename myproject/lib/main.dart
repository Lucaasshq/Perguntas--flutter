import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
    perguntaSelecionada++;  
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Gato'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Cachorro'),
            ),
            ElevatedButton(
              onPressed: responder,
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
    return PerguntaAppState();
  }
}
