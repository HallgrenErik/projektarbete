import 'package:flutter/material.dart';
import 'package:myapp/Projekt/album_view.dart';
import 'package:myapp/Projekt/mina_reviews.dart';
import 'album_lista.dart';
import 'artist_view.dart';
import 'avancerad_sokning.dart';

class StartSida extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.green,
            centerTitle: true,
            leading: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AvanceradSokning()),
                  );
                }),
            title: const Text("GLITTER",
                style: TextStyle(fontWeight: FontWeight.bold)),
            actions: [
              PopupMenuButton(
                onSelected: null,
                itemBuilder: (context) => [
                  // ignore: prefer_const_constructors
                  PopupMenuItem(child: Text('Top betyg')),
                  PopupMenuItem(child: Text('Top antal recensioner')),
                ],
              ),
            ]),
        body: ListView(children: [
          filterbar(),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlbumView()));
              },
              child: albumRow(
                  albumTitel: 'Back in Black',
                  artist: 'AC/DC',
                  albumBetyg: '3/5')),
          albumRow(
            albumTitel: 'S/M',
            artist: 'The Weekend',
            albumBetyg: '2.7/5',
          ),
          albumRow(
              albumTitel: 'Last Chrismas',
              artist: 'Wham!',
              albumBetyg: '3.4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
        ]),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.list, color: Colors.green),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MinaReviews()),
              );
            }));
  }
}
