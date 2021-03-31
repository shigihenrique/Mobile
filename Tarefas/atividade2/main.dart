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
  int tamanho = tam(lista);
  print(tamanho);
  List<Widget> rows = [];

  for (int i = 0; i < 10; i++) {
    rows.add(Column(children: retornaContainers(lista, i, tamanho)));
  }

  return rows;
}

List<Widget> retornaContainers(lista, i, tamanho) {
  List<Widget> row = [];

  for (int j = 0; j < 10; j++) {
    bool caminho = false;
    bool inicio = false;
    bool fim = false;
    for (int cont = 0; cont < tamanho; cont++) {
      List xyLista = lista[cont];
      print(xyLista);
      int xLista = xyLista[0];
      int yLista = xyLista[1];
      if (i == xLista && j == yLista) {
        if (cont == 0) {
          inicio = true;
        } else if (cont == tamanho - 1) {
          fim = true;
        } else {
          caminho = true;
        }
        break;
      }
    }
    if (inicio) {
      row.add(Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(color: Colors.yellow),
        margin: EdgeInsets.all(1),
      ));
    } else if (fim) {
      row.add(Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(color: Colors.red),
        margin: EdgeInsets.all(1),
      ));
    } else if (caminho) {
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
