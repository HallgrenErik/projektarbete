import 'package:flutter/material.dart';

Widget songRow({required String songTitel}) {
  return ListTile(
    title: Text(songTitel),
  );
}

Widget filterbar() {
  return Container(
    child: Text(
      'Top Results',
      style: TextStyle(fontSize: 14),
    ),
    alignment: Alignment.center,
    height: 30,
    width: 400,
    decoration: BoxDecoration(color: Colors.white70),
  );
}

Widget filter() {
  var aa;
  return DropdownButton(
      hint: Text("Filter by"),
      //På något sätt skapa en hintext om att filter finns här + ta bort den lilla gråa triangeln om möjligt
      value: aa,
      style: const TextStyle(color: Colors.black),
      alignment: Alignment.centerRight,
      underline: Container(
        height: 2,
        color: Colors.white70,
      ),
      items: const [
        DropdownMenuItem(
            value: Alignment.topCenter, child: Text('Best Rating')),
        DropdownMenuItem(
            value: Alignment.topCenter, child: Text('Worst Rating')),
        DropdownMenuItem(
            value: Alignment.topLeft, child: Text('Number of Reviews')),
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
      title: Text(albumTitel, style: TextStyle(color: Colors.white)),
      subtitle: Text(artist, style: TextStyle(color: Colors.white)),
      trailing: Text(albumBetyg, style: TextStyle(color: Colors.white)));
}

Widget review(String reviewText) {
  return ListTile(
    title: Text('"$reviewText"', style: TextStyle(color: Colors.white)),
  );
}
