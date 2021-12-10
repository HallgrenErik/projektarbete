import 'package:flutter/material.dart';
import 'package:my_first_app/album_lista.dart';

class StartSida extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.blueAccent,
          backgroundColor: Colors.purple,
          title: Text("Start Sida"),
        ),
        body: Column(children: [
          filterbar(),
          albumRow(
              albumTitel: 'Tänd ett Ljus', artist: 'AcDc', albumBetyg: '5/5'),
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
        ]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_ios_new),
              label: 'Back',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'My review',
            ),
          ],
        ));
  }
}
