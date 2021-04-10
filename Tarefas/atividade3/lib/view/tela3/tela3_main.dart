import 'package:flutter/material.dart';

class MainTela3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            contrainedFitted(),
            Divider(
              thickness: 3,
            ),
            containerComFirula(),
            Divider(
              thickness: 3,
            ),
            presentationScreen()
          ],
        ),
      ),
    );
  }
}

Widget contrainedFitted() {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 60,
      minHeight: 60,
    ),
    child: FittedBox(
      fit: BoxFit.fill,
      child: Text("RastApp"),
    ),
  );
}

Widget containerComFirula() {
  return Container(
    //width: 200,
    //height: 200,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(40),
      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 20)],
      gradient:
          LinearGradient(colors: [Colors.red, Colors.green, Colors.yellow]),
    ),
    child: SizedBox(
      width: double.infinity,
      height: 100,
      child: Text(
        "DJ Cleiton Rasta",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    padding: EdgeInsets.all(40),
    margin: EdgeInsets.all(40),
  );
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
                'assets/images/analise.jpg',
                width: 200,
              )),
        ),
        Text("Povoado Santo Antônio",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blueAccent)),
        Text(
          "DescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescriçãoDescrição",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
