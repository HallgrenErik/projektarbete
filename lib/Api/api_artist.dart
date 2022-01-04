import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Items/artist_item.dart';

const API_ARTIST = "Drake";
const API_URLARTIST =
    'http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=$API_ARTIST&api_key=$API_KEY&format=json';
const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class ArtistFetcher {
  static Future<ArtistItem> fetchArtist() async {
    http.Response response = await http.get(Uri.parse(API_URLARTIST));
    var json = jsonDecode(response.body);
    print(json['artist']['name']);
    print(json['artist']['bio']['summary']);
    return ArtistItem.artistItemFromJson(json['artist']);
  }
}
