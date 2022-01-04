import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Items/sok_item.dart';

String sokning = "title";
String API_SOKURL =
    'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$sokning&api_key=$API_KEY&format=json';
const API_KEY = 'c995db7b4ae865f6a4243e90eddc9593';

class SokLista {
  static Future<List<SokItem>> fetchAlbumList() async {
    http.Response response = await http.get(Uri.parse(API_SOKURL));
    var json = jsonDecode(response.body);
    return json['results']['albummatches']['album'].map<SokItem>((data) {
      return SokItem.sokItemFromJson(data);
    }).toList();
  }
}
