import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/start_page.dart';
import 'package:provider/provider.dart';
import '../Lists/album_list.dart';
import '../States/my_state.dart';

class SearchResultView extends StatelessWidget {
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).fetchResultList();
    return Scaffold(
      appBar:
          AppBar(title: Text('SEARCH RESULTS'), centerTitle: true, actions: [
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StartPage()));
            }),
      ]),
      body: Consumer<MyState>(
          builder: (context, state, child) =>
              AlbumResultList(state.searchList)),
    );
  }
}
