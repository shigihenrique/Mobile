import 'package:flutter/material.dart';

class MainTela2 extends StatelessWidget {
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
                'assets/images/vitinho.jpg',
                width: 200,
              )),
        ),
        Text("\nVitor Costa Batista",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.greenAccent)),
        Text("📍São Paulo - SP, Brasil",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.grey)),
        Text(
          "\nEstudante de Sistemas de Informação (2019 - 2022), grande amante de carros, com 20 anos, e futuro DBA ou analista de BI.",
          textAlign: TextAlign.left,
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
