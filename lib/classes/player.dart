class Player {
  String name;
  int age;
  int marketValue; // https://www.transfermarkt.com/chile/marktwertanalyse/verein/3700

  Player(this.name, this.age, this.marketValue);

  factory Player.fromJson(dynamic json) {
    return Player(json['name'] as String, json['age'] as int, json['market_value'] as int);
  }

  static List<Player> manyFromJson(dynamic json) {
    List<Player> countries = [];
    json.forEach((value) {
      countries.add(Player.fromJson(value));
    });
    return countries;
  }
}
