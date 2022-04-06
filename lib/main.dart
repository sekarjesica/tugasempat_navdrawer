import 'package:flutter/material.dart';
import 'nav_drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "BelajarFlutter",
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text("MUSIK ASIK"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.collections), text: "Gambar"),
                  new Tab(icon: new Icon(Icons.audiotrack), text: "Musik"),
                  new Tab(icon: new Icon(Icons.home), text: "Home"),
                ],
              )),
          drawer: DrawerWidget(),
          body: TabBarView(
            children: <Widget>[
              gambar(),
              musik(),
              home(),
            ],
          )));
}
