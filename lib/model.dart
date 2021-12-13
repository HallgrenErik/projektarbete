import 'package:flutter/material.dart';
import './sok_resultat.dart';

Widget inputYear() {
  return Container(
    margin: const EdgeInsets.all(30),
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
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
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextField(
        decoration: const InputDecoration(hintText: "Enter Album name here!"),
      ),
    ),
  );
}

Widget inputArtist() {
  return Container(
    margin: const EdgeInsets.all(30),
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
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
    onSelected: null,
    itemBuilder: (context) => [
      // ignore: prefer_const_constructors
      PopupMenuItem(child: Text('HipHop')),
      PopupMenuItem(child: Text('Jazz')),
    ],
  );
}

Widget sokKnapp(context) {
  return FloatingActionButton(
      child: Text('SÖK'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SokResultat()),
        );
      });
}
