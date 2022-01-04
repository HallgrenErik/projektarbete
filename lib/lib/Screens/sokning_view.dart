// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:myapp/Projekt/lib/Items/sok_item.dart';
import '../model.dart';
import 'sok_resultat_view.dart';

class sokningView extends StatefulWidget {
  const sokningView({Key? key}) : super(key: key);

  @override
  _sokningViewState createState() => _sokningViewState();
}

class _sokningViewState extends State<sokningView> {
  @override
  Widget build(BuildContext context) {
    var myController;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sökning'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          TextField(
              controller: myController,
              decoration: const InputDecoration(
                  hintText: "Vem vill du hitta", border: OutlineInputBorder())),
          ElevatedButton(
              child: Text('SÖK'),
              onPressed: () {
                Navigator.push(
                  //hur pushar man input till annan class, (API Sök resultat)
                  context,
                  MaterialPageRoute(builder: (context) => SokResultatView()),
                );
              })
        ]),
      ),
    );
  }
}
