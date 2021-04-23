import 'package:flutter/material.dart';

class MainTela3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: generateBasicListView());
  }

  var nome = "Cleiton";
  var idade = 32;
  var musica = "Ragga da Morena";
  var estado = "Alagoas";
  var modo = "Ativado";
  var grupo = "Cabeças de Gelo";

  Widget generateBasicListView() {
    return ListView(
      children: [
        Card(
          color: Colors.red,
          elevation: 5,
          child: ListTile(
            title: Text("Nome:"),
            subtitle: Text("${nome}"),
            leading: Icon(Icons.access_time),
            onTap: () {
              print("Card Clicado");
            },
          ),
        ),
        Card(
          color: Colors.red,
          elevation: 5,
          child: ListTile(
            title: Text("Idade:"),
            subtitle: Text("${idade}"),
            leading: Icon(Icons.access_time),
            onTap: () {
              print("Card Clicado");
            },
          ),
        ),
        Card(
          color: Colors.green,
          elevation: 5,
          child: ListTile(
            title: Text("Música Preferida:"),
            subtitle: Text("${musica}"),
            leading: Icon(Icons.access_time),
            onTap: () {
              print("Card Clicado");
            },
          ),
        ),
        Card(
          color: Colors.green,
          elevation: 5,
          child: ListTile(
            title: Text("Estado:"),
            subtitle: Text("${estado}"),
            leading: Icon(Icons.access_time),
            onTap: () {
              print("Card Clicado");
            },
          ),
        ),
        Card(
          color: Colors.yellow,
          elevation: 5,
          child: ListTile(
            title: Text("Modo Super Fã:"),
            subtitle: Text("${modo}"),
            leading: Icon(Icons.access_time),
            onTap: () {
              print("Card Clicado");
            },
          ),
        ),
        Card(
          color: Colors.yellow,
          elevation: 5,
          child: ListTile(
            title: Text("Grupo:"),
            subtitle: Text("${grupo}"),
            leading: Icon(Icons.access_time),
            onTap: () {
              print("Card Clicado");
            },
          ),
        ),
      ],
    );
  }
}
