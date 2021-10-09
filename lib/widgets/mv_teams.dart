import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';

class MvTeams extends StatefulWidget {

  List<Country> countries;

  MvTeams({required this.countries, Key? key}) : super(key: key);

  @override
  _MvTeamsState createState() => _MvTeamsState();
}

class _MvTeamsState extends State<MvTeams> {

  List<Country> orderedCountries = [];

  @override
  void initState() {
    super.initState();
    orderedCountries = widget.countries;
  }


  @override
  Widget build(BuildContext context) {
    return const Text("Most valuable teams");
  }
}
