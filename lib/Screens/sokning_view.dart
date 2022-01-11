import 'package:flutter/material.dart';
import '../States/my_state.dart';
import 'package:provider/provider.dart';
import 'sok_resultat_view.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final myController = TextEditingController();
  String? searchWord;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEARCH ALBUM'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                    hintText: "Search on album or artist here!"),
              ),
            ),
          ),
          ElevatedButton(
              child: Text('SEARCH'),
              onPressed: () {
                Provider.of<MyState>(context, listen: false)
                    .setWord(myController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchResultView()),
                );
              }),
        ]),
      ),
    );
  }
}
