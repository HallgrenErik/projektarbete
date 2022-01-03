import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Items/album_item.dart';

const API_URL =
    'http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=$API_KEY&artist=Cher&album=Believe&format=json';
String API_SOKURL =
    'http://ws.audioscrobbler.com/2.0/?method=album.search&album=abc&api_key=$API_KEY&format=json';
const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class AlbumFetcher {
  static Future<List<AlbumItem>> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(API_URL));
    var json = jsonDecode(response.body);

    print(json['album']['name']);
    print(json['album']['artist']);
    print(json['album']['wiki']['published']);
    print(json['album']['image'][4]['#text']);
    print(json['album']['wiki']['summary']);
    return json['album'].map<AlbumItem>((data) {
      print(data);
      return AlbumItem.albumFromJson(data);
    }).toList();
  }
}
