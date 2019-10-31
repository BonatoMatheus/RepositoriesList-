import 'package:flutter/material.dart';
import 'package:repositories_list/pages/favorites.dart';
import 'package:repositories_list/pages/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = [
      SearchPage(),
      FavoritesPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Image.asset(
          "images/gitlogo.png",
          width: 80,
          height: 80,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("conta");
            },
          ),
        ],
      ),
      body: GetBody(pages),
      bottomNavigationBar: getBottom(),
    );
  }

  GetBody(List pages) {
    return pages[_indiceAtual];
  }

  getBottom() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.red[900],
              title: Text("Search"),
              icon: Icon(Icons.search, color: Colors.white)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.red[900],
              title: Text("Favorites"),
              icon: Icon(Icons.view_list, color: Colors.white)
          ),
        ]
    );
  }
}
