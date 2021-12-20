import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const API_URL = 'https://theaudiodb.com/api/v1/json/2/album.php?m=2115888';
String API_SOKURL =
    'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$sokAlbum&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json';

class AlbumFetcher {
  static Future<AlbumItem> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(API_URL));
    var jsonData = response.body;
    var obj = jsonDecode(jsonData);
    print(obj['album'][0]);
    return AlbumItem.fromJson(obj['album'][0]);
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
      albumTitel: json["strAlbum"],
      artistName: json["strArtist"],
      cover: json['strAlbumThumb'],
      description: json['strDescriptionEN'],
    );
  }
}
