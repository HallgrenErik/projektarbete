import 'package:flutter/material.dart';

Widget albumRow(
    {required String albumTitel, required String artist, var albumBetyg}) {
  return ListTile(
      leading: Image.network(
        'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
        height: 100,
        width: 100,
      ),
      title: Text(albumTitel),
      subtitle: Text(artist),
      trailing: Text(albumBetyg));
}

Widget songRow({required String songTitel}) {
  return ListTile(
    title: Text(songTitel),
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
  //lägga till användarnamn /melwin
  return ListTile(
      leading: Image.network(
        'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
        height: 100,
        width: 100,
      ),
      title: Text(albumTitel),
      subtitle: Text(artist),
      trailing: Text(albumBetyg));
}

Widget review(String reviewText) {
  return ListTile(
    title: Text('$reviewText'),
  );
}
