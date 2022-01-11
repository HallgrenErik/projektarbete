import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Items/start_item.dart';

const apiKey = 'c995db7b4ae865f6a4243e90eddc9593';

class ApiStartList {
  static Future<List<StartItem>> fetchStartList() async {
    http.Response response = await http.get(Uri.parse(
        'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=beatles&api_key=c995db7b4ae865f6a4243e90eddc9593&format=json'));
    var json = jsonDecode(response.body);
    return json['topalbums']['album'].map<StartItem>((data) {
      return StartItem.startItemFromJson(data);
    }).toList();
  }
}
