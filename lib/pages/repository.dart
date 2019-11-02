import 'package:flutter/material.dart';
import 'package:repositories_list/api/api.dart';
import 'package:repositories_list/models/repository.dart';

class myRepositoriesPage extends StatefulWidget {
  @override
  _myRepositoriesPageState createState() => _myRepositoriesPageState();
}

class _myRepositoriesPageState extends State<myRepositoriesPage> {

  _getRepositories() {
    Api api = Api();
    return api.getRepositories("javascript");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Repository>>(
      future: _getRepositories(),
      // ignore: missing_return
      builder: (context, snapashot) {

        switch (snapashot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
          case ConnectionState.done:
              return Center(
                child: Text("Nenhum resultado encontrado."),
              );
            break;
        }
      },
    );
  }
}
