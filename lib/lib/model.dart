// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'Screens/sok_resultat_view.dart';

Widget inputYear() {
  return Container(
    margin: const EdgeInsets.all(30),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextField(
        decoration:
            const InputDecoration(hintText: "Enter year here! Format: YYYY"),
      ),
    ),
  );
}

Widget inputAlbum() {
  return Container(
    margin: const EdgeInsets.all(30),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextField(
        decoration: const InputDecoration(hintText: "Enter Album name here!"),
      ),
    ),
  );
}

Widget inputsokning() {
  var textEditingController;
  return TextField(
      controller: textEditingController,
      decoration: const InputDecoration(
          hintText: "Vad ska du göra?", border: OutlineInputBorder()));
}

Widget inputArtist() {
  return Container(
    margin: const EdgeInsets.all(30),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextField(
        decoration: const InputDecoration(hintText: "Enter Artist name here!"),
      ),
    ),
  );
}

Widget inputGenre() {
  return PopupMenuButton(
    color: Colors.white,
    onSelected: null,
    itemBuilder: (context) => [
      // ignore: prefer_const_constructors
      PopupMenuItem(child: Text('HipHop')),
      PopupMenuItem(child: Text('Jazz')),
    ],
  );
}

Widget sokKnapp(context) {
  return ElevatedButton(
      child: Text('SÖK'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SokResultatView()),
        );
      });
}
