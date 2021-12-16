import 'package:flutter/material.dart';
import './album_view.dart';
import './mina_reviews.dart';
import 'album_funktioner.dart';
import 'artist_view.dart';
import 'avancerad_sokning.dart';

//byta namn på denna, kopplad till första sidan

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        body: ListView(children: [
          filterbar(),
          filter(),
          albumRow(context, 'albumTitel', 'artistName', 5),
          const Divider(),
          albumRow(context, 'albumTitel', 'artistName', 5),
        ]));
  }
}
