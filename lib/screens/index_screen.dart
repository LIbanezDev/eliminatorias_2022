import 'dart:convert';

import 'package:eliminatorias_2022/classes/country.dart';
import 'package:eliminatorias_2022/data/countries.dart';
import 'package:eliminatorias_2022/widgets/mv_players.dart';
import 'package:eliminatorias_2022/widgets/mv_teams.dart';
import 'package:eliminatorias_2022/widgets/teams_ranking.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    TeamsRanking(countries: Country.manyFromJson(jsonDecode(countriesJson))),
    MvPlayers(countries: Country.manyFromJson(jsonDecode(countriesJson))),
    MvTeams(countries: Country.manyFromJson(jsonDecode(countriesJson)))
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sports_soccer),
        title: const Text('Ranking Eliminatorias 2022'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        unselectedFontSize: 17,
        selectedFontSize: 17,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Tabla',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Jugadores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Equipos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffd1b121),
        onTap: _onItemTapped,
      ),
    );
  }
}
