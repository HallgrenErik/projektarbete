import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Items/artist_item.dart';

const API_URLartist =
    'http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=Cher&api_key=$API_KEY&format=json';
String API_SOKURL =
    'http://ws.audioscrobbler.com/2.0/?method=album.search&album=abc&api_key=$API_KEY&format=json';
const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class ArtistFetcher {
  static Future<ArtistItem> fetchArtist() async {
    http.Response response = await http.get(Uri.parse(API_URLartist));
    var jsonData = response.body;
    var obj = jsonDecode(jsonData);
    //print(obj['artist']);
    //print(obj['artist']['bio']['summary']);
    //print(obj['artist']['name']);
    return ArtistItem.artistFromJson(obj['artist']);
  }
}
