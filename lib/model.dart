// ignore_for_file: import_of_legacy_library_into_null_safe

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

Widget skrivRad() {
  return Column(children: [
    Image.network(
      'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
      height: 200,
      width: 200,
    ),
    Container(height: 10),
    const Text("Back in Black",
        style: TextStyle(
          fontSize: 20,
        )),
    const Text("AC/DC"),
    Container(
      margin: const EdgeInsets.all(30),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          decoration:
              const InputDecoration(hintText: "Valfritt: skriv användarnamn"),
        ),
      ),
    ),
    Container(
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          decoration: const InputDecoration(hintText: "Skriv en recension"),
        ),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 50,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 50,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 50,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: const Icon(
            Icons.star,
            color: Colors.purple,
            size: 50,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: const Icon(
            Icons.star,
            color: Colors.purple,
            size: 50,
          ),
          onPressed: null,
        ),
      ],
    ),
    Container(
        height: 50,
        width: 150,
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.purple,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'ADD',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            //textAlign: TextAlign.center,
          ),
        )),
  ]);
}
