
import 'package:eliminatorias_2022/classes/tournament.dart';
import 'package:eliminatorias_2022/screens/mv_players_screen.dart';
import 'package:eliminatorias_2022/screens/mv_teams_screen.dart';
import 'package:eliminatorias_2022/screens/teams_ranking_screen.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    TeamsRanking(countries: Tournament.getCountries()),
    MvPlayers(countries: Tournament.getCountries()),
    MvTeams(countries: Tournament.getCountries())
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
        iconSize: 33,
        unselectedFontSize: 16,
        selectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
