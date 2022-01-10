import 'package:flutter/material.dart';
import 'package:my_first_app/Items/album_item.dart';
import 'package:my_first_app/Lists/review_list.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';
import '../Screens/artist_info_view.dart';
import '../Screens/skriv_review_view.dart';
import '../model.dart';
import './review_state.dart';

class AlbumState extends StatefulWidget {
  final AlbumItem? album;

  AlbumState(this.album);

  @override
  State<AlbumState> createState() => _AlbumState();
}

class _AlbumState extends State<AlbumState> {
  Widget build(BuildContext context) {
    return _albumrad(context, widget.album);
  }

  Widget _albumrad(context, rad) {
    if (rad == null) return Container();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 30,
          ),
          Image.network(
            rad.cover,
            height: 300,
          ),
          Container(height: 10),
          Text(rad.albumTitel,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white)),
          TextButton(
            onPressed: () {
              Provider.of<MyState>(context, listen: false)
                  .setArtist(rad.artistName);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArtistView()));
            },
            child: Text(rad.artistName),
            style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),
          ),
          const Text(
            "Rating - 3/5",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<MyState>(context, listen: false)
                    .setAA(rad.artistName, rad.albumTitel);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SkrivReview()));
              },
              child: const Text('Write Review')),
          ListTile(
              title: Text(rad.description,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white))),
          Container(height: 10),
        ],
      ),
    );
  }
}
