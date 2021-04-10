import 'package:flutter/material.dart';
import 'package:ativ3/view/tela1/tela1_main.dart';
import 'package:ativ3/view/tela2/tela2_main.dart';
import 'package:ativ3/view/tela3/tela3_main.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: Text("GRUPO D2"),
              bottom: TabBar(
                // isScrollable: true,
                tabs: [
                  Tab(
                    child: Text("Shigi"),
                    icon: Icon(Icons.account_box),
                  ),
                  Tab(text: "Vitinho", icon: Icon(Icons.account_box)),
                  Tab(icon: Icon(Icons.phone_android), child: Text("Trabalho")),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                MainTela1(),
                MainTela2(),
                MainTela3(),
              ],
            ),
          ),
        ));
  }
}
