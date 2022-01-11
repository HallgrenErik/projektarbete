import 'package:flutter/material.dart';
import 'package:my_first_app/Items/album_item.dart';
import 'package:my_first_app/Lists/review_list.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';
import '../Screens/artist_info_view.dart';
import '../Screens/skriv_review_view.dart';
import '../Items/review_item.dart';

class AlbumState extends StatefulWidget {
  final AlbumItem? album;
  final List<Review> list;

  AlbumState(this.album, this.list);

  @override
  State<AlbumState> createState() => _AlbumState();
}

class _AlbumState extends State<AlbumState> {
  Widget build(BuildContext context) {
    return _albumrad(context, widget.album, widget.list);
  }

  Widget _albumrad(context, rad, list) {
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
          Text(rad.albumTitle,
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
          ElevatedButton(
              onPressed: () {
                Provider.of<MyState>(context, listen: false)
                    .setAlbumArtist(rad.artistName, rad.albumTitle);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SkrivReview()));
              },
              child: const Text('Write Review')),
          ListTile(
              title: Text(rad.albumDescription,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white))),
          Container(height: 10),
          AlbumReviewList(_filter(list, rad.albumTitle))
        ],
      ),
    );
  }

  List<Review> _filter(list, filterBy) {
    return list
        .where((review) => review.compiledData.album == filterBy)
        .toList();
  }
}
