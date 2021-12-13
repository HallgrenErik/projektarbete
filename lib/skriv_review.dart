import 'package:flutter/material.dart';
import 'package:my_first_app/model.dart';

class SkrivReview extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Skriv review'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            skrivRad(),
          ],
        )));
  }
}
