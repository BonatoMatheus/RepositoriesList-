class Repository {
  int id;
  String nome;
  String avatar;
  String language;
  String description;
  int stars;


  Repository({this.id, this.nome, this.avatar, this.language, this.description,
    this.stars});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        id: json["id"],
        nome: json["name"],
        avatar: json["owner"]["avatar_url"],
        language: json["language"],
        description: json["description"],
        stars: json["stargazers_count"]);
  }
}
