import 'package:flutter/material.dart';
import 'model.dart';
import './model.dart';
import './sok_resultat.dart';

class AvanceradSokning extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avancerad sökning'),
      ),
      body: Column(
        children: [
          inputGenre(),
          inputYear(),
          inputAlbum(),
          inputArtist(),
          sokKnapp(context),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SokResultat()));
              },
              child: Text('hej'))
        ],
      ),
    );
  }
}
