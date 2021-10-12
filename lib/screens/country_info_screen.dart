import 'package:eliminatorias_2022/classes/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class CountryInfo extends StatelessWidget {
  Country country;

  final TextStyle textStyleData = const TextStyle(fontWeight: FontWeight.bold, fontSize: 19);
  final f = NumberFormat.compact(locale: 'en_US');

  CountryInfo(this.country, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ranking Eliminatorias 2022'),
          centerTitle: true,
          elevation: 10,
        ),
        body: CustomScrollView(
          primary: false,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              sliver: SliverGrid.count(crossAxisSpacing: 10, crossAxisCount: 1, children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      margin: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image(
                              image: AssetImage('assets/images/countries/${country.name}'
                                  '.png'),
                              height: 320,
                              width: 400,
                            ),
                          ),
                          Column(
                            children: [
                              Text(country.name, style: const TextStyle(fontSize: 40))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      margin: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: AssetImage('assets/images/countries/${country.name}G'
                              '.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          size: 40,
                          color: Color(0xffcca985),
                        ),
                        Text(
                          f.format(country.population),
                          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.payments,
                          size: 40,
                          color: Colors.green,
                        ),
                        Text(
                          ' €' + f.format(country.marketValue),
                          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.poll,
                            size: 40,
                            color: Color(0xffd16a21),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext builder) {
                                  return _buildPopupDialog(context, country);
                                });
                          },
                        ),
                        const Text("Qatar", style: TextStyle(fontSize: 21, fontWeight:
                        FontWeight.bold),)
                      ],
                    ),
                  ]),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                  children: [
                    Text(
                      country.desc,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.justify,
                    )
                  ]),
            )
          ],
        ));
  }
}

Widget _buildPopupDialog(BuildContext context, Country c) {
  return AlertDialog(
    title: const Text(
      "Probabilidades de clasificar al mundial",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            "${c.probs}%",
            style: TextStyle(
                color: c.probs > 20 ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
        ),
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(
          'Cerrar',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Theme.of(context).primaryColor),
        ),
      ),
    ],
  );
}
