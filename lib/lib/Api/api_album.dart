import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Items/album_item.dart';

class AlbumFetcher {
  static Future<AlbumItem> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=c995db7b4ae865f6a4243e90eddc9593&artist=Cher&album=Believe&format=json'));
    var json = jsonDecode(response.body);

    print(json['album']['name']);
    print(json['album']['artist']);
    print(json['album']['wiki']['published']);
    print(json['album']['image'][4]['#text']);
    print(json['album']['wiki']['summary']);
    print(json['album']['tracks']['track'][3]);

    return AlbumItem.albumFromJson(json['album']);
  }
}
