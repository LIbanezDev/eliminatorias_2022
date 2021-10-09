import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';

class MvPlayers extends StatefulWidget {
  List<Country> countries;

  MvPlayers({required this.countries, Key? key}) : super(key: key);

  @override
  _MvPlayersState createState() => _MvPlayersState();
}

class _MvPlayersState extends State<MvPlayers> {
  @override
  Widget build(BuildContext context) {
    return const Text("Most valuable players...");
  }
}
