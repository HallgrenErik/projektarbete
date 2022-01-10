import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../States/artist_state.dart';
import '../States/my_state.dart';

class ArtistView extends StatelessWidget {
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).getArtist();
    return Scaffold(
      appBar: AppBar(
        title: const Text("ARTIST"),
        centerTitle: true,
      ),
      body: Consumer<MyState>(
          builder: (context, state, child) => ArtistState(state.artist)),
    );
  }
}
