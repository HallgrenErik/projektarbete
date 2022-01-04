import 'package:flutter/material.dart';
import 'package:my_first_app/Items/album_item.dart';
import './Items/artist_item.dart';
import 'Screens/artist_info_view.dart';
import 'filter_mm.dart';

class AlbumList extends StatefulWidget {
  final List<AlbumItem> list;

  AlbumList(this.list);

  @override
  State<AlbumList> createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => artistrad(context, widget.list[index]),
      itemCount: widget.list.length,
    );
  }

  Widget artistrad(context, rad) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 30,
          ),
          Image.network(
            rad.cover,
            height: 300,
          ),
          Container(height: 10),
          const Text("Back in Black",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white)),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArtistView()));
            },
            child: Text("AC/DC"),
            style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),
          ),
          const Text(
            "Rating - 3/5",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const ListTile(
              title: Text(
                  "Track List: \n1 - Hells Bells \n2 - Shoot to Thrill \n3 - What Do You Do With The Money \n4 - Givin the Dog a Bone\n5 - Let Me Put My Love Into You\n6 - Back In Black \n7 - You Shook Me All Night Long \n8 - Have a Drink on Me \n9 - Shake a Leg \n10 - Rock and Roll Ain't Noise Pollution",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white))),
          Container(height: 10),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: review('Älskar AC/DC!! Shoot to Thrill är min favorit'),
          ),
          Container(height: 10),
          Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(20)),
              child: review(' Föredrar pop, men ändå ok album- 3/5'),
              margin: EdgeInsets.only(bottom: 10))
        ],
      ),
    );
  }
}
