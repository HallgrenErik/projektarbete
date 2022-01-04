import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../skriv_review.dart';
import '../album_sok_list.dart';
import '../my_state.dart';
import 'album_info_view.dart';

class SokResultatView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Results'),
          centerTitle: true,
        ),
        body: Consumer<MyState>(
            builder: (context, state, child) => AlbumSokList(state.sokList)),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.list,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlbumInfoView()),
              );
            }));
  }
}
