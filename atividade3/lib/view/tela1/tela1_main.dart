import 'package:flutter/material.dart';

class MainTela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return presentationScreen();
  }
}

Widget presentationScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              border: Border.all(color: Colors.black, width: 6)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(49),
              child: Image.asset(
                'assets/images/shigi.jpg',
                width: 200,
              )),
        ),
        Text("Henrique Bergamo Shigihara",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blueAccent)),
        Text("19 anos, Sorocaba - SP, Brasil",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.grey)),
        Text(
          "Estudante de Sistemas de Informação na Unicamp com experiência em trabalhos voluntários em organizações estudantis e na Ordem DeMolay. Curioso sobre uma grande quantidade de tópicos diferentes, estou sempre aprendendo (e às vezes ensinando). As pessoas ao meu redor dizem que sou uma pessoa fácil de fazer amizade, o que faz sentido, porque gosto muito de estabelecer novos relacionamentos, também quero ser uma ponte entre o mundo da tecnologia e o dos negócios.",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
