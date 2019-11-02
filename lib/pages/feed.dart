import 'package:flutter/material.dart';
import 'package:repositories_list/models/languages.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        padding: EdgeInsets.only(top: 20, right: 3, left: 3),
        childAspectRatio: 8 / 9,
        children: <Widget>[
          Card(
            color: Colors.red[900],
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                //INSERIR ROTA
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18 / 13,
                    child: Image.asset('images/javascript.png', fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Center(
                      child: Text('Java Script',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18 / 13,
                    child: Image.asset('images/flutter.png', fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Center(
                      child: Text('Flutter',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                //INSERIR ROTA
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18 / 13,
                    child: Image.asset('images/react.png', fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 21),
                    child: Center(
                      child: Text('React',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                //INSERIR ROTA
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18 / 13,
                    child: Image.asset('images/angular.png', fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 21),
                    child: Center(
                      child:
                          Text('Angular', style: TextStyle(fontSize:15, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                //INSERIR ROTA
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18 / 13,
                    child: Image.asset('images/dotNet.png', fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 21),
                    child: Center(
                      child:
                      Text('.Net Core', style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.red[900],
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                //INSERIR ROTA
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 18 / 13,
                    child: Image.asset('images/vue.png', fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 21),
                    child: Center(
                      child:
                      Text('Vue JS', style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
