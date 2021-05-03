import 'package:flutter/material.dart';
import 'package:rastapp/view/tela1/tela1_main.dart';
import 'package:rastapp/view/tela2/tela2_main.dart';
import 'package:rastapp/view/tela3/tela3_main.dart';

class MyTabBarLayout extends StatelessWidget {
  final List<Widget> widgets = [
    MainTela1(),
    MainTela2(),
    MainTela3(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: Text("RastApp"),
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text("DJ"),
                    icon: Icon(Icons.music_note),
                  ),
                  Tab(
                    child: Text("Fã Clube"),
                    icon: Icon(Icons.people),
                  ),
                  Tab(
                    child: Text("Carteirinha"),
                    icon: Icon(Icons.card_membership),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: widgets,
            ),
          ),
        ));
  }
}
