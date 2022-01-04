import 'package:flutter/material.dart';
import '../Items/sok_item.dart';

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
        rad.coverUrl,
        height: 100,
        width: 100,
      ),
      title: Text(
        rad.albumTitel,
        style: textStyle(),
      ),
      subtitle: Text(rad.artistName, style: textStyle()),
      trailing: Text(
        'Den har 4.5',
        style: textStyle(),
      ),
    );
  }
}

TextStyle textStyle() {
  return TextStyle(color: Colors.white);
}
