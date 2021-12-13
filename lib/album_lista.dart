import 'package:flutter/material.dart';

import 'album_view.dart';

Widget albumRow(BuildContext context,
    {required String albumTitel, required String artist, var albumBetyg}) {
  return ListTile(
    leading: Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(color: Colors.amber),
    ),
    title: Text(albumTitel),
    subtitle: Text(artist),
    trailing: Text(albumBetyg),
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AlbumView()));
    },
  );
}

Widget filterbar() {
  return Container(
    child: Text('Topp baserat på x'),
    alignment: Alignment.center,
    height: 30,
    width: 400,
    decoration: BoxDecoration(color: Colors.grey),
  );
}

Widget reviewItem(
    {required String albumTitel, required String artist, var albumBetyg}) {
  return ListTile(
      leading: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(color: Colors.amber),
      ),
      title: Text(albumTitel),
      subtitle: Text(artist),
      trailing: Text(albumBetyg));
}

Widget review(String reviewText) {
  return ListTile(
    title: Text('"$reviewText"'),
  );
}
