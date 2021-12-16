import 'package:flutter/material.dart';
import 'model.dart';
import './model.dart';
import './sok_resultat.dart';

class AvanceradSokning extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text('Avancerad sökning'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          inputGenre(),
          inputYear(),
          inputAlbum(),
          inputArtist(),
          sokKnapp(context),
        ]),
      ),
    );
  }
}
