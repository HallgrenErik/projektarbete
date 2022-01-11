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
    if (info.artistDescription == null) return Container();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: 800,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(color: Colors.black87, width: 3),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(info.artistName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white,
                  ))),
          Container(
            child: Text("Genre: " + info.genre,
                style: TextStyle(color: Colors.white, fontSize: 20)),
            margin: const EdgeInsets.all(5),
          ),
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
