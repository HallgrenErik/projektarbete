import 'package:flutter/material.dart';
import 'package:myapp/Projekt/lib/Stateful/album_sok_list.dart';
import '../Items/artist_item.dart';
import '../Screens/artist_info_view.dart';
import '../filter_mm.dart';

class ArtistList extends StatefulWidget {
  ArtistItem? artist;

  ArtistList(this.artist, {Key? key}) : super(key: key);

  @override
  State<ArtistList> createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {
  @override
  Widget build(BuildContext context) {
    return artistrad(context, widget.artist);
  }

  Widget artistrad(context, rad) {
    if (rad == null) return Container();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 30,
          ),
          Text(rad.artistName),
          Container(height: 10),
          Container(
            child: Text(rad.artistDescription),
            margin: const EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
