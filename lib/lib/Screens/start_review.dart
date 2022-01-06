import 'package:flutter/material.dart';
import '../model.dart';

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

class MinaReviews extends StatelessWidget {
  const MinaReviews({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          reviewItem(
              albumTitel: 'Tänd ett Ljus', artist: 'AcDc', albumBetyg: '5/5'),
          review('detta är en review'),
          const Divider(color: Colors.white),
          reviewItem(
            albumTitel: 'S/M',
            artist: 'The Weekend',
            albumBetyg: '2.7/5',
          ),
          review(
              'detta är en reviewdetta är en reviewdetta är en reviewdetta är en reviewdetta är en reviews'),
          const Divider(),
        ],
      ),
    );
  }
}
