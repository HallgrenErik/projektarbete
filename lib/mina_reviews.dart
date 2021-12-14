import 'package:flutter/material.dart';
import 'album_lista.dart';

class MinaReviews extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.green,
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Mina Reviews'),
      ),
      body: ListView(
        children: [
          reviewItem(
              albumTitel: 'Tänd ett Ljus', artist: 'AcDc', albumBetyg: '5/5'),
          review('detta är en review'),
          const Divider(),
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
