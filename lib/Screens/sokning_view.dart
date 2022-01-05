import 'package:flutter/material.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';

import 'sok_resultat_view.dart';

class Sokning extends StatefulWidget {
  @override
  State<Sokning> createState() => _AvanceradSokningState();
}

class _AvanceradSokningState extends State<Sokning> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String sokord;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sökning'),
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
                decoration:
                    const InputDecoration(hintText: "Enter search word here!"),
              ),
            ),
          ),
          ElevatedButton(
              child: Text('SÖK'),
              onPressed: () {
                Provider.of<Sokord>(context, listen: false)
                    .setWord('', myController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SokResultatView()),
                );
              }),
        ]),
      ),
    );
  }
}
