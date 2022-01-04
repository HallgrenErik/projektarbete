import 'package:flutter/material.dart';
import 'package:myapp/Projekt/lib/Screens/artist_info_view.dart';
import 'package:provider/provider.dart';
import '../skriv_review.dart';
import '../Stateful/album_sok_list.dart';
import '../Stateful/my_state.dart';

class SokResultatView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Results'),
          centerTitle: true,
        ),
        body: Consumer<MyState>(
            builder: (context, state, child) => AlbumSokList(state.soklist)),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.list,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArtistView()),
              );
            }));
  }
}
