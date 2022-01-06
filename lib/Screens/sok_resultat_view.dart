import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Review/skriv_review.dart';
import '../States/album_sok.dart';
import '../States/my_state.dart';
import 'album_info_view.dart';

class SokResultatView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
        centerTitle: true,
      ),
      body: Consumer<MyState>(
          builder: (context, state, child) => AlbumSok(state.soklist)),
    );
  }
}
