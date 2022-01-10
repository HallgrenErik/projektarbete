import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Items/artist_item.dart';

class ArtistState extends StatefulWidget {
  ArtistItem? artist;

  ArtistState(this.artist, {Key? key}) : super(key: key);

  @override
  State<ArtistState> createState() => _ArtistState();
}

class _ArtistState extends State<ArtistState> {
  @override
  Widget build(BuildContext context) {
    return _artistPage(context, widget.artist);
  }

  Widget _artistPage(context, info) {
    if (info == null) return Container();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(height: 10),
          Text(info.artistName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 75.5,
                color: Colors.white,
              )),
          Container(
            child: Text(
              info.artistDescription,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            margin: const EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
