import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';

class CountryInfo extends StatelessWidget {
  Country country;

  final TextStyle textStyleData = const TextStyle(fontWeight: FontWeight.bold, fontSize: 19);

  CountryInfo(this.country, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ranking Eliminatorias 2022'),
          centerTitle: true,
          elevation: 10,
        ),
        body: Center(
          child: Column(
            children: [
              Image(
                  image: AssetImage('assets/images/countries/${country.name}.png'),
                  width: 190),
              Center(
                  child: Text(
                country.name,
                style: textStyleData,
              )),
              Center(
                  child: Text("Poblacion: " + country.population.toString(),
                      style: textStyleData)),
            ],
          ),
        ));
  }
}
