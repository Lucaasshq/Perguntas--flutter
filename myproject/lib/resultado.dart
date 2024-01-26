import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, {super.key});
  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'parabéns \npontuação:$pontuacao!';
    } else if (pontuacao < 12) {
      return 'Você é bom \npontuação:$pontuacao!';
    } else if (pontuacao < 16) {
      return "impresionante \npontuação:$pontuacao!";
    } else {
      return 'Nivel Jedi! \npontuação:$pontuacao!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
      fraseResultado,
        style: const TextStyle(fontSize: 28, color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );
  }
}
