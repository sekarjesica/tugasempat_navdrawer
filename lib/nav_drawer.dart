import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.collections,
              text: 'Gambar',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'Musik',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          _drawerItem(icon: Icons.delete, text: 'Trash', onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.bookmark, text: 'Family', onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('asset/image/bunga.jpg'), fit: BoxFit.cover),
    ),
    accountName: Text('Sekarapj'),
    accountEmail: Text('sekar@apj.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class gambar extends StatelessWidget {
  final List<String> foto = [
    'asset/image/doraemon.jpg',
    'asset/image/haikyuu.jpg',
    'asset/image/subasa.jpg',
    'asset/image/naruto.jpg',
    'asset/image/jujutsu_kaisen.jpg',
    'asset/image/one_piece.jpg',
  ];

  final List<String> sub = [
    'DORAEMON',
    'HAIKYUU',
    'TSUBASA',
    'NARUTO',
    'JUJUTSU KAISEN',
    'ONE PIECE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}

class musik extends StatelessWidget {
  final List judul = [
    "Doraemon",
    "Fly High",
    "Hikari Are",
    "Captain Tsubasa",
    "Alive",
    "Blue Bird",
    "We Are",
    "Hope",
    "Kaikai Kitan",
    "Vivid Vice",
    "Phoenix"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              title: Text(judul[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text(
              "Beranda",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Icon(
              Icons.home,
              size: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
