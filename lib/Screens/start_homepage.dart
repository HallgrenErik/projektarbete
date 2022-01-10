import 'package:flutter/material.dart';
import 'package:my_first_app/Items/start_item.dart';
import 'package:my_first_app/Screens/sokning_view.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:my_first_app/States/start_state.dart';
import 'package:provider/provider.dart';

class Startsida extends StatelessWidget {
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).hamtaStartLista();
    return Scaffold(
      appBar: AppBar(
        title: Text('Startsida'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sokning()),
                );
              }),
        ],
      ),
      body: Consumer<MyState>(
          builder: (context, state, child) => StartSida(state.startList)),
    );
  }
}
