import 'package:flutter/material.dart';
import 'package:my_first_app/Items/sok_item.dart';
import 'package:my_first_app/Items/start_item.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/src/provider.dart';
import '../Screens/album_info_view.dart';

class StartSida extends StatefulWidget {
  final List<StartItem> list;

  StartSida(this.list);

  @override
  State<StartSida> createState() => _StartSidaState();
}

class _StartSidaState extends State<StartSida> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => startrad(context, widget.list[index]),
      itemCount: widget.list.length,
    );
  }

  Widget startrad(context, sak) {
    return Card(
        color: const Color(0xFF66579C),
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
          // Text('playCount ' + sak.startPlayCount)

          onTap: () {
            Provider.of<MyState>(context, listen: false)
                .setAA(sak.startArtistName, sak.startAlbumTitle);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AlbumInfoView()));
          },
        ));
  }
}

TextStyle textStyle() {
  return TextStyle(color: Colors.white);
}
