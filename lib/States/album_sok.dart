import 'package:flutter/material.dart';
import 'package:my_first_app/Items/sok_item.dart';

import '../Screens/album_info_view.dart';

class AlbumSok extends StatefulWidget {
  final List<SokItem> list;

  AlbumSok(this.list);

  @override
  State<AlbumSok> createState() => _AlbumSokListState();
}

class _AlbumSokListState extends State<AlbumSok> {
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
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AlbumInfoView()));
      },
    );
  }
}

TextStyle textStyle() {
  return TextStyle(color: Colors.white);
}
