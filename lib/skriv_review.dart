import 'package:flutter/material.dart';
import 'model.dart';

class SkrivReview extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Write Review'),
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
