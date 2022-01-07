import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../States/album_sok.dart';
import '../States/my_state.dart';

class SokResultatView extends StatelessWidget {
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).hamtaLista();
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
