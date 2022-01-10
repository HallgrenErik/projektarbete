import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Items/artist_item.dart';

class ApiArtistFetch {
  static Future<ArtistItem> fetchArtist(String artistInfo) async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=$artistInfo&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));
    var json = jsonDecode(response.body);
    return ArtistItem.artistItemFromJson(json['artist']);
  }
}
