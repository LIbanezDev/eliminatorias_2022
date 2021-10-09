import 'dart:convert';

import 'package:eliminatorias_2022/data/countries.dart';

import 'country.dart';

class Tournament {
  static final dynamic _countries = jsonDecode(countriesJson);

  static List<Country> getCountries() {
    return Country.manyFromJson(_countries);
  }
}
