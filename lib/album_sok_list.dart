import 'package:flutter/material.dart';
import './Api/api_album.dart';

class AlbumList extends StatefulWidget {
  final List<AlbumItem> list;

  AlbumList(this.list);

  @override
  State<AlbumList> createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
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
