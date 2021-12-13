import 'package:flutter/material.dart';
import './album_lista.dart';

class MinaReviews extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Mina Reviews'),
      ),
      body: ListView(
        children: [
          review('detta är en review'),
          review(
              'detta är en reviewdetta är en reviewdetta är en reviewdetta är en reviewdetta är en reviews'),
        ],
      ),
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
            icon: Icon(Icons.list, color: Colors.red),
            label: 'My review',
          ),
        ],
      ),
    );
  }
}
