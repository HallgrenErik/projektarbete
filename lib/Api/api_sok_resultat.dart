import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/Items/sok_item.dart';

class ApiSearchList {
  static Future<List<SearchItem>> doAlbumSearch(String searchWord) async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$searchWord&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));
    var json = jsonDecode(response.body);
    return json['results']['albummatches']['album'].map<SearchItem>((data) {
      return SearchItem.searchItemFromJson(data);
    }).toList();
  }
}
