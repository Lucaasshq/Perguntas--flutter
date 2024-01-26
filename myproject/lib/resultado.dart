import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'parabéns \npontuação: $pontuacao!';
    } else if (pontuacao < 12) {
      return 'Você é bom \npontuação: $pontuacao!';
    } else if (pontuacao < 16) {
      return "impresionante \npontuação: $pontuacao!";
    } else {
      return 'Nivel Jedi! \npontuação: $pontuacao!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
                fontSize: 28, color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
          child: const Text(
            'Reinicar?',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
