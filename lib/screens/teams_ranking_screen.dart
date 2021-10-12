import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';

import 'country_info_screen.dart';

class TeamsRanking extends StatefulWidget {
  List<Country> countries;

  TeamsRanking({required this.countries, Key? key}) : super(key: key);

  @override
  _TeamsRankingState createState() => _TeamsRankingState();
}

class _TeamsRankingState extends State<TeamsRanking> {
  List<Country> orderedCountries = [];

  @override
  void initState() {
    super.initState();
    orderedCountries = widget.countries;
    orderedCountries.sort((a, b) => a.pts.compareTo(b.pts) * -1); // ordenando x pts
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView.separated(
        itemCount: orderedCountries.length ,
        itemBuilder: (context, index) {
            return ListTile(
              tileColor: (index) <= 4 ? const Color(0x1424d121) : const Color(0x14d12121),
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/countries/${orderedCountries[index].name}'
                        '.png'), // no matter how big it is, it won't overflow
              ),
              title: Text(
                  orderedCountries[index].name +
                      ' | ${orderedCountries[index].pts} pts',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountryInfo(orderedCountries[index])));
              },
            );
        },
        separatorBuilder: (context, index) {
          return const Divider(color: Color(0x4ca2a9be));
        },
      ),
    );
  }
}
