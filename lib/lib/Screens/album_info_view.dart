import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import '../Stateful/album_list.dart';
import '../Stateful/my_state.dart';
import '../skriv_review.dart';
import '../filter_mm.dart';
import 'artist_info_view.dart';

class AlbumInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ALBUM",
        ),
        centerTitle: true,
      ),
      body: Consumer<MyState>(builder: (context, state, child) => AlbumList()),
    );
  }
}
