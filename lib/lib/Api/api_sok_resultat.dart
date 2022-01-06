import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/Projekt/lib/States/my_state.dart';
import 'package:provider/provider.dart';
import '../Items/sok_item.dart';

const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class SokLista {
  static Future<List<SokItem>> fetchAlbumList() async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=album.search&album=ord&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));
    //print(response.body);

    var json = jsonDecode(response.body);
    print(json['results']['albummatches']['album'][8]['artist']);
    return json['results']['albummatches']['album'].map<SokItem>((data) {
      print(data);
      return SokItem.sokItemFromJson(data);
    }).toList();
  }
}
