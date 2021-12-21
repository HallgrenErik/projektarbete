import 'package:flutter/material.dart';
import 'filter_mm.dart';

//byta namn på denna, kopplad till första sidan

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      filterbar(),
      filter(),
      const Divider(color: Colors.white),
    ]));
  }
}
