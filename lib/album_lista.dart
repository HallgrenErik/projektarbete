import 'package:flutter/material.dart';
import './album_item.dart';

import 'album_view.dart';

Widget albumRow(
  context,
  String albumTitel,
  String artistName,
  double betyg,
) {
  return ListTile(
    leading: Image.network(
      'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
      height: 100,
      width: 100,
    ),
    title: Text(albumTitel),
    subtitle: Text(artistName),
    trailing: Text(
      'Den har 4.5',
    ),
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AlbumView()));
    },
  );
}

Widget songRow({required String songTitel}) {
  return ListTile(
    title: Text(songTitel),
  );
}

Widget filterbar() {
  return Container(
    child: Text(
      'Topp baserat på x',
      style: TextStyle(fontSize: 14),
    ),
    alignment: Alignment.center,
    height: 30,
    width: 400,
    decoration: BoxDecoration(color: Colors.white),
  );
}

Widget filter() {
  var aa;
  return DropdownButton(
      //På något sätt skapa en hintext om att filter finns här + ta bort den lilla gråa triangeln om möjligt
      value: aa,
      style: const TextStyle(color: Colors.black),
      alignment: Alignment.center,
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      items: const [
        DropdownMenuItem(
            value: Alignment.topCenter, child: Text('Bäst Rating')),
        DropdownMenuItem(
            value: Alignment.topCenter, child: Text('Sämst Rating')),
        DropdownMenuItem(
            value: Alignment.topLeft, child: Text('Antal Recensioner')),
      ],
      onChanged: (value) {});
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
    title: Text('"$reviewText"'),
  );
}
