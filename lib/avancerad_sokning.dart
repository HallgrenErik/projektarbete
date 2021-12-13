import 'package:flutter/material.dart';
import 'package:my_first_app/model.dart';
import './model.dart';
import './sok_resultat.dart';

class AvanceradSokning extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
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
