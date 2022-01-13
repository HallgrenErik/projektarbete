import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Items/album_item.dart';

class ApiAlbumFetch {
  static Future<AlbumItem> fetchAlbum(String newAlbum, newArtist) async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=c995db7b4ae865f6a4243e90eddc9593&artist=$newArtist&album=$newAlbum&format=json'));
    var json = jsonDecode(utf8.decode(response.bodyBytes));
    return AlbumItem.albumFromJson(json['album']);
  }
}
