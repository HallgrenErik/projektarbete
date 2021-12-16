import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const API_URL = 'https://theaudiodb.com/api/v1/json/2/album.php?m=2115888';

class AlbumFetcher {
  static Future<String> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(API_URL));
    var jsonData = response.body;
    var obj = jsonDecode(jsonData);

    return jsonData;
  }

  static void getAlbum() async {
    var resultat = await fetchAlbum();
    print(resultat);
  }
}
//  Widget albumGet() {
//  return ElevatedButton(
//    child: Text('hämta album'),
//  onPressed: () {
//  getAlbum();
// });
//}
//}

class AlbumItem {
  String albumTitel;
  String artistName;

  AlbumItem(
    this.albumTitel,
    this.artistName,
  );
  /*static AlbumItem fetchAlbum(Map<String, dynamic> json) {
    return AlbumItem(
      albumTitel: json["strAlbum"],
      artistName: json["strArtist"],    
    );
    */
}
