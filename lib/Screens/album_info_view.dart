import 'package:flutter/material.dart';
import 'package:my_first_app/Lists/review_list.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';
import '../States/album_state.dart';

class AlbumInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).getAlbum();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ALBUM",
        ),
        centerTitle: true,
      ),
      body: Consumer<MyState>(
        builder: (context, state, child) => AlbumState(state.album),
      ),
    );
  }
}
