import 'package:eliminatorias_2022/classes/player.dart';

class Country {
  String name;
  int population;
  int marketValue;
  int pts;
  String desc;
  int probs;
  List<Player> team;

  Country(this.name, this.population, this.marketValue, this.team, this.pts, this.desc,
      this.probs);

  factory Country.fromJson(dynamic json) {
    return Country(
        json['name'] as String,
        json['population'] as int,
        json['market_value'] as int,
        Player.manyFromJson(json['team']),
        json['pts'] as int,
        json['desc'] as String,
        json['probs'] as int);
  }

  static List<Country> manyFromJson(dynamic json) {
    List<Country> countries = [];
    json.forEach((value) {
      countries.add(Country.fromJson(value));
    });
    return countries;
  }
}
