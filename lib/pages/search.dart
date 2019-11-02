import 'package:flutter/material.dart';
import 'package:repositories_list/api/api.dart';
import 'package:repositories_list/models/repository.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

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
            if (snapashot.hasData) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    List<Repository> repositories = snapashot.data;
                    Repository repository = repositories[index];

                    return Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(repository.avatar))
                            // ignore: missing_return
                          ),
                        ),
                        ListTile(
                          title: Text(repository.nome),
                          subtitle: Text(repository.language),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    height: 20,
                    color: Colors.red[900],
                  ),
                  itemCount: snapashot.data.length);
            } else {
              return Center(
                child: Text("Nenhum resultado encontrado."),
              );
            }
            break;
        }
      },
    );
  }
}
