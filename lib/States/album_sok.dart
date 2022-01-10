import 'package:flutter/material.dart';
import 'package:my_first_app/Items/sok_item.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/src/provider.dart';
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
    return Card(
        color: const Color(0xFF66579C),
        child: ListTile(
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
          onTap: () {
            Provider.of<MyState>(context, listen: false)
                .setAA(rad.artistName, rad.albumTitel);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AlbumInfoView()));
          },
        ));
  }
}

TextStyle textStyle() {
  return TextStyle(color: Colors.white);
}
