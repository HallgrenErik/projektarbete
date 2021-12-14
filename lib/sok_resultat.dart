import 'package:flutter/material.dart';
import 'skriv_review.dart';
import './skriv_review.dart';
import 'album_lista.dart';

class SokResultat extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sök Resultat'),
          centerTitle: true,
        ),
        body: ListView(children: [
          albumRow(
              albumTitel: 'Tänd ett Ljus', artist: 'AcDc', albumBetyg: '5/5'),
          albumRow(
            albumTitel: 'S/M',
            artist: 'The Weekend',
            albumBetyg: '2.7/5',
          ),
          albumRow(
              albumTitel: 'Last Chrismas',
              artist: 'Wham!',
              albumBetyg: '3.4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
        ]),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.list, color: Colors.green),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkrivReview()),
              );
            }));
  }
}
