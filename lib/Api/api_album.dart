import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const API_URL =
    'http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=$API_KEY&artist=Cher&album=Believe&format=json';
String API_SOKURL =
    'http://ws.audioscrobbler.com/2.0/?method=album.search&album=abc&api_key=$API_KEY&format=json';
const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class AlbumFetcher {
  static Future<AlbumItem> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(API_URL));
    var jsonData = response.body;
    var obj = jsonDecode(jsonData);
    print(obj['album']['name']);
    print(obj['album']['image'][4]['#text']);
    print(obj['album']['wiki']['summary']);
    return AlbumItem.fromJson(obj['album']);
  }

  static void getAlbum() async {
    var resultat = await fetchAlbum();
    print(resultat);
  }
}

class AlbumItem {
  String albumTitel;
  String artistName;
  String cover;
  String description;

  AlbumItem({
    required this.albumTitel,
    required this.artistName,
    required this.cover,
    required this.description,
  });
  static AlbumItem fromJson(Map<String, dynamic> json) {
    return AlbumItem(
      albumTitel: json["name"],
      artistName: json["artist"],
      cover: json['image'][4]['#text'],
      description: json['wiki']['summary'],
    );
  }
}
