import 'package:flutter/material.dart';
import 'album_lista.dart';

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
