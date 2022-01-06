import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'skriv_review.dart';
import 'album_lista.dart';

import 'artist_view.dart';
import './skriv_review.dart';
import 'filter_mm.dart';

import 'artist_info_view.dart';
import 'package:my_first_app/States/my_state.dart';

import 'package:provider/provider.dart';
import '../States/album_state.dart';
import '../States/album_state.dart';

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
      body: Consumer<MyState>(
          builder: (context, state, child) => AlbumState(state.album)),
    );
  }
}
