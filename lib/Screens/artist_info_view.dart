import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../artist_list.dart';
import '../my_state.dart';

class ArtistView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ARTIST"),
        centerTitle: true,
      ),
      body: Consumer<MyState>(
          builder: (context, state, child) => ArtistList(state.artist)),
    );
  }
}
