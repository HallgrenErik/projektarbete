import 'package:flutter/material.dart';
import 'album_info_view.dart';
import './mina_reviews.dart';
import 'filter_mm.dart';
import 'artist_info_view.dart';
import 'avancerad_sokning.dart';

//byta namn på denna, kopplad till första sidan

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      filterbar(),
      filter(),
      const Divider(color: Colors.white),
    ]));
  }
}
