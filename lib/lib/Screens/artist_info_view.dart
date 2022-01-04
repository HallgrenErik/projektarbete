import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import '../Stateful/artist_list.dart';
import '../filter_mm.dart';
import '../Stateful/my_state.dart';
import 'mina_reviews_view.dart';

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
