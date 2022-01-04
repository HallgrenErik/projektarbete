// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'Screens/sok_resultat_view.dart';

Widget skrivRad() {
  return Column(children: [
    Container(height: 10),
    Image.network(
      'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
      height: 200,
      width: 200,
    ),
    Container(height: 10),
    const Text("Back in Black",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        )),
    const Text("AC/DC", style: TextStyle(color: Colors.white)),
    Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: TextField(
          decoration: InputDecoration(hintText: "Optional: Write Username"),
        ),
      ),
    ),
    Container(
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: TextField(
          decoration: InputDecoration(hintText: "Write a Review"),
        ),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconKnapp(),
        iconKnapp(),
        iconKnapp(),
        iconKnapp(),
        iconKnapp(),
      ],
    ),
    ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: Colors.purple),
        child: Text('ADD')),
  ]);
}

Widget iconKnapp() {
  return IconButton(
    icon: const Icon(
      Icons.star,
      color: Colors.yellow,
      size: 40,
    ),
    onPressed: () {},
  );
}
