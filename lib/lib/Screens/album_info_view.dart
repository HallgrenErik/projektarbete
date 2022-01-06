import 'package:flutter/material.dart';
import '../States/my_state.dart';

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
