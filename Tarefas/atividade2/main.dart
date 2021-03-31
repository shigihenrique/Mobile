import 'package:flutter/material.dart';
import 'thor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Atividade 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //Construtor
  MyHomePage({Key key, this.title}) : super(key: key);

  //Atributo
  final String title;

  //CreateState
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: retornaRows(),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> retornaRows() {
  List lista = marteloThor([5, 2], [4, 7]);
  print(lista);
  List<Widget> rows = [];
  for (int i = 0; i < 10; i++) {
    rows.add(Column(children: retornaContainers(lista, i)));
  }
  return rows;
}

List<Widget> retornaContainers(lista, i) {
  List<Widget> row = [];

  for (int j = 0; j < 10; j++) {
    List valor = [i, j];
    print(valor);
    bool caminho = lista.contains(valor);
    print(caminho);
    if (caminho) {
      row.add(Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(color: Colors.blue),
        margin: EdgeInsets.all(1),
      ));
    } else {
      row.add(Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(color: Colors.green),
        margin: EdgeInsets.all(1),
      ));
    }
  }
  return row;
}
