import 'package:flutter/material.dart';
import 'model.dart';

class SkrivReview extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          title: Text('Skriv review'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            skrivRad(),
          ],
        )));
  }
}
