import 'package:cloud_firestore/cloud_firestore.dart';

class Repository {
  int id;
  String name;
  String avatar;
  String language;
  String description;
  int stars;

  final DocumentReference reference;


  Repository({this.id, this.name, this.avatar, this.language, this.description,
    this.stars, this.reference});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        id: json["id"],
        name: json["name"],
        avatar: json["owner"]["avatar_url"],
        language: json["language"],
        description: json["description"],
        stars: json["stargazers_count"]);
  }

  Repository.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['avatar'] != null),
        assert(map['language'] != null),
        assert(map['description'] != null),
        assert(map['stars'] != null),
        name = map['name'],
        avatar = map['votes'],
        language = map['language'],
        description = map['description'],
        stars = map['stars'];

  Repository.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}



