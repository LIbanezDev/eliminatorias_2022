

import 'package:eliminatorias_2022/classes/player.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlayerCard extends StatelessWidget {
  final Player player;
  final double fontSize;
  final int ranking;
  var f = NumberFormat.compact(locale: 'en_US');

  PlayerCard({Key? key, required this.player, required this.fontSize, required this
      .ranking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image(
                  image:
                  AssetImage('assets/images/players/${player.name}.jpg'),
              ),
            ),
            Text("#$ranking ${player.name}", style: TextStyle(fontWeight: FontWeight.bold,
                fontSize:
            fontSize)),
            Text(
              "€ ${f.format(player.marketValue)}",
              style: TextStyle( fontSize: fontSize),
            )
          ],
        ));
  }
}
