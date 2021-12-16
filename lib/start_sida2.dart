import 'package:flutter/material.dart';
import './album_view.dart';
import './mina_reviews.dart';
import 'album_lista.dart';
import 'artist_view.dart';
import 'avancerad_sokning.dart';

//byta namn på denna, kopplad till första sidan

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      filterbar(),
      filter(),
      albumRow(context, 'albumTitel', 'artistName', 5),
      const Divider(color: Colors.white),
      albumRow(context, 'albumTitel', 'artistName', 5),
    ]));
  }
}
