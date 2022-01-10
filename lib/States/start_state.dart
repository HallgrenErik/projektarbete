import 'package:flutter/material.dart';
import 'package:my_first_app/Items/sok_item.dart';
import 'package:my_first_app/Items/start_item.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/src/provider.dart';
import '../Screens/album_info_view.dart';

class DevPage extends StatefulWidget {
  final List<StartItem> list;

  DevPage(this.list);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => startTile(context, widget.list[index]),
      itemCount: widget.list.length,
    );
  }

  Widget startTile(context, sak) {
    return Card(
        color: const Color(0xC5BCE6),
        child: ListTile(
          leading: Image.network(
            sak.startCoverUrl,
            height: 100,
            width: 100,
          ),
          title: Text(
            sak.startAlbumTitle,
            style: textStyle(),
          ),
          subtitle: Text(sak.startArtistName, style: textStyle()),
          trailing: Text(
            'Playcount:\n' + sak.startPlayCount.toString(),
            style: textStyle(),
          ),
          onTap: () {
            Provider.of<MyState>(context, listen: false)
                .setAlbumArtist(sak.startArtistName, sak.startAlbumTitle);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AlbumInfoView()));
          },
        ));
  }
}

TextStyle textStyle() {
  return TextStyle(color: Colors.white);
}
