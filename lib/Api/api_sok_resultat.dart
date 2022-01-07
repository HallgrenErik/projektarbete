import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/Items/sok_item.dart';
import 'package:my_first_app/Screens/sokning_view.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';

const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class SokLista {
  //final String? sokord = Provider.of<Sokord>().sokord;
  // print(sokord);

  static Future<List<SokItem>> doAlbumSearch(String sokord) async {
    //String sokord = MyState(state.sokord);
    //Consumer<MyState>(builder: (context, sokord, child) => Sokning());
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$sokord&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));

    var json = jsonDecode(response.body);
    return json['results']['albummatches']['album'].map<SokItem>((data) {
      // print(data);
      return SokItem.sokItemFromJson(data);
    }).toList();
  }
}

//          Provider.of<MyState>(context).sokord +