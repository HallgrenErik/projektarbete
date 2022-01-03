import 'package:flutter/material.dart';
import 'package:my_first_app/sok_item.dart';

import 'album_item.dart';

class AlbumSokList extends StatefulWidget {
  final List<SokItem> list;

  AlbumSokList(this.list);

  @override
  State<AlbumSokList> createState() => _AlbumSokListState();
}

class _AlbumSokListState extends State<AlbumSokList> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => sokrad(context, widget.list[index]),
      itemCount: widget.list.length,
    );
  }

  Widget sokrad(context, rad) {
    return ListTile(
      leading: Image.network(
        'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
        height: 100,
        width: 100,
      ),
      title: Text(rad.albumTitel),
      subtitle: Text(rad.artistName),
      trailing: Text(
        'Den har 4.5',
      ),
    );
  }
}
