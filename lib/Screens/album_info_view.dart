import 'package:flutter/material.dart';
import 'package:my_first_app/my_state.dart';

import 'package:provider/provider.dart';
import '../album_list.dart';
import '../album_list.dart';

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
          builder: (context, state, child) => AlbumList(state.albumLista)),
    );
  }
}
