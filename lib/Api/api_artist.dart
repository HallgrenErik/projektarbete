import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Items/artist_item.dart';

class ArtistFetcher {
  static Future<ArtistItem> fetchArtist(String artistInfo) async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=$artistInfo&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));
    var json = jsonDecode(response.body);
    //print(json['artist']['name']);
    //print(json['artist']['bio']['summary']);
    return ArtistItem.artistItemFromJson(json['artist']);
  }
}
