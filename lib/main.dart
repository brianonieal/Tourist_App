import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Hwk8()));
}

class Hwk8 extends StatefulWidget {
  @override
  _Hwk8State createState() => _Hwk8State();
}

class _Hwk8State extends State<Hwk8> {
  var countries_names = ['Mexico', 'Canada', 'UK', 'Italy', 'France', 'Dominican Republic', 'Spain',
                         'Jamaica', 'China', 'India'];
  var countries_flags = ['mexico_flag.jpeg', 'canada_flag.jpeg', 'uk_flag.jpeg',
                         'italy-flag.gif', 'france_flag.jpeg' 'dominican_republic_flag.gif',
                         'spain_flag', 'jamaica_flag.jpeg', 'china_flag.gif', 'india_flag.gif'];
  var attractions = ['mexico_cathedral.png', 'canada_airport.jpeg','uk_bigben.jpeg', 'italy_veneza.jpeg',
                    'france_eiffel.jpeg', 'dominican_beach.jpeg', 'spain_castle.jpeg', 'jamaica_beach.jpeg'
                    'china_greatwall.jpeg', 'india_tajmahal.png'];
  var attraction_names = ['Mexico Cathedral', 'Toronto Airport', 'UK Big Ben', 'Italy Vanveza',
                          'France Eiffel Tower', 'Dominican Republic Beach', 'Spain Castle',
                          'Jamaica Beach', 'China Great Wall', 'India Taj Mahal'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tourist App')),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  itemCount: countries_flags.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Image.asset('images/' + countries_flags[index]),
                      Text(countries_names[index]),
                    ]);
                  }
              ),
            ),
            Expanded(
              child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  pageSnapping: true,
                  itemCount: attractions.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Image.asset('images/' + attractions[index]),
                      Text(attraction_names[index]),
                    ]);
                  }
              ),
            ),
          ],
        )
    );
  }}