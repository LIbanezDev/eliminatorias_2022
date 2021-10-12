import 'package:eliminatorias_2022/classes/country.dart';
import 'package:eliminatorias_2022/classes/player.dart';
import 'package:eliminatorias_2022/widgets/player_card.dart';
import 'package:flutter/material.dart';

class MvPlayers extends StatefulWidget {
  List<Country> countries;

  MvPlayers({required this.countries, Key? key}) : super(key: key);

  @override
  _MvPlayersState createState() => _MvPlayersState();
}

class _MvPlayersState extends State<MvPlayers> {
  List<Player> orderedPlayers = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.countries.length; i++) {
      for (var player in widget.countries[i].team) {
        orderedPlayers.add(player);
      }
    }
    orderedPlayers.sort((a, b) => a.marketValue.compareTo(b.marketValue) * -1);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              PlayerCard(
                player: orderedPlayers[0],
                fontSize: 18,
                ranking: 1,
              ),
              PlayerCard(
                player: orderedPlayers[1],
                fontSize: 18,
                ranking: 2,
              ),
              PlayerCard(
                player: orderedPlayers[2],
                fontSize: 18,
                ranking: 3,
              ),
              PlayerCard(
                player: orderedPlayers[3],
                fontSize: 18,
                ranking: 4,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              PlayerCard(
                player: orderedPlayers[4],
                fontSize: 14,
                ranking: 5,
              ),
              PlayerCard(
                player: orderedPlayers[5],
                fontSize: 14,
                ranking: 6,
              ),
              PlayerCard(
                player: orderedPlayers[6],
                fontSize: 14,
                ranking: 7,
              ),
              PlayerCard(
                player: orderedPlayers[7],
                fontSize: 14,
                ranking: 8,
              ),
              PlayerCard(
                player: orderedPlayers[8],
                fontSize: 15,
                ranking: 9,
              ),
              PlayerCard(
                player: orderedPlayers[9],
                fontSize: 14,
                ranking: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
