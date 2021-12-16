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
        body: ListView(children: []),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.list,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkrivReview()),
              );
            }));
  }
}
