import 'package:flutter/material.dart';
import 'package:repositories_list/pages/feed.dart';
import 'package:repositories_list/pages/repository.dart';
import 'package:repositories_list/pages/search.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/home': (context) => HomePage(),
    '/feed': (context) => FeedPage(),
    '/search': (context) => SearchPage(),
    '/repositories': (context) => myRepositoriesPage(),
  },
  home: HomePage(),
));