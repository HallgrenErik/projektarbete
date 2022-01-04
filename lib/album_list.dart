import 'package:flutter/material.dart';
import 'package:my_first_app/Items/album_item.dart';
import './Items/artist_item.dart';
import 'Screens/artist_info_view.dart';
import 'filter_mm.dart';

class AlbumList extends StatefulWidget {
  final AlbumItem? album;

  AlbumList(this.album);

  @override
  State<AlbumList> createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
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
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white)),
          TextButton(
            onPressed: () {
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
          ListTile(
              title: Text(rad.description,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white))),
          Container(height: 10),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: review('Älskar AC/DC!! Shoot to Thrill är min favorit'),
          ),
          Container(height: 10),
          Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(20)),
              child: review(' Föredrar pop, men ändå ok album- 3/5'),
              margin: EdgeInsets.only(bottom: 10))
        ],
      ),
    );
  }
}
