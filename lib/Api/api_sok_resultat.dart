import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/Api/api_album.dart';

String sokning = 'abc';
String API_SOKURL =
    'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$sokning&api_key=$API_KEY&format=json';
const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class SokLista {
  static Future<List<AlbumItem>> fetchAlbumList() async {
    http.Response response = await http.get(Uri.parse(API_SOKURL));
    print(response.body);
    var json = jsonDecode(response.body);

    return json.map<AlbumItem>((data) {
      return AlbumItem.fromJson(data);
    }).toList;
  }

  static void sokresultat() async {
    var resultat = await fetchAlbumList();
    print(resultat);
  }
}
