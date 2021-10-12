import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'country_info_screen.dart';

class MvTeams extends StatefulWidget {
  List<Country> countries;

  MvTeams({required this.countries, Key? key}) : super(key: key);

  @override
  _MvTeamsState createState() => _MvTeamsState();
}

class _MvTeamsState extends State<MvTeams> {
  List<Country> orderedCountries = [];
  var f = NumberFormat.compact(locale: 'en_US');

  @override
  void initState() {
    super.initState();
    orderedCountries = widget.countries;
    orderedCountries.sort((a, b) => a.marketValue.compareTo(b.marketValue) * -1);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(orderedCountries.length, (index) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CountryInfo(orderedCountries[index])));
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image(
                          image: AssetImage(
                              'assets/images/countries/${orderedCountries[index].name}'
                              '.png'),
                          width: 170),
                    ),
                    Text(
                        '# ${index + 1} ${orderedCountries[index].name} \n '
                        '€ ${f.format(orderedCountries[index].marketValue)}',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
