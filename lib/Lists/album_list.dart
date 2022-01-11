import 'package:flutter/material.dart';
import '../Items/sok_item.dart';
import '../States/my_state.dart';
import 'package:provider/provider.dart';
import '../Screens/album_info_view.dart';

class AlbumResultList extends StatefulWidget {
  final List<SearchItem> list;

  AlbumResultList(this.list);

  @override
  State<AlbumResultList> createState() => _AlbumResultListState();
}

class _AlbumResultListState extends State<AlbumResultList> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => _searchTile(context, widget.list[index]),
      itemCount: widget.list.length,
    );
  }

  Widget _searchTile(context, rad) {
    if (rad.coverUrl == '') return Container();
    return Card(
        color: const Color(0xC5BCE6),
        child: ListTile(
          leading: Image.network(
            rad.coverUrl,
            height: 100,
            width: 100,
          ),
          title: Text(
            rad.albumTitle,
            style: _textStyle(),
          ),
          subtitle: Text(rad.artistName, style: _textStyle()),
          onTap: () {
            Provider.of<MyState>(context, listen: false)
                .setAlbumArtist(rad.artistName, rad.albumTitle);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AlbumInfoView()));
          },
        ));
  }
}

TextStyle _textStyle() {
  return const TextStyle(color: Colors.white);
}
