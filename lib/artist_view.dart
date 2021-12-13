import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './album_lista.dart';
import './mina_reviews.dart';

class artistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ALBUM"), actions: const [
          IconButton(
              icon: Icon(Icons.menu_outlined),
              tooltip: 'menu',
              onPressed: null),
        ]),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 30,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.black,
              ),
              Container(height: 10),
              const Text("AC/DC",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              Container(height: 8),
              const Text("info om artist och musik")
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MinaReviews()),
              );
            }));
  }
}
