import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';

import 'country_info.dart';

class TeamsRanking extends StatefulWidget {
  List<Country> countries;

  TeamsRanking({required this.countries, Key? key}) : super(key: key);

  @override
  _TeamsRankingState createState() => _TeamsRankingState();
}

class _TeamsRankingState extends State<TeamsRanking> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(widget.countries.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountryInfo(widget.countries[index])));
              },
              child: Column(
                children: [
                  Image(
                      image:
                          AssetImage('assets/images/countries/${widget.countries[index].name}'
                              '.png'),
                      width: 170),
                  Text(widget.countries[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
