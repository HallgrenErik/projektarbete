import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/Items/sok_item.dart';
import 'package:my_first_app/Items/start_item.dart';
import 'package:my_first_app/Screens/sokning_view.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';

const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class StartLista {
  static Future<List<StartItem>> getStartList() async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=drake&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));

    var json = jsonDecode(response.body);
    return json['topalbums']['album'].map<StartItem>((data) {
      // print(data);
      return StartItem.startItemFromJson(data);
    }).toList();
  }
}
