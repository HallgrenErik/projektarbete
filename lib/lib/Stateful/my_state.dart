import 'package:flutter/material.dart';
import '../Api/api_album.dart';
import '../Api/api_sok_resultat.dart';
import '../Items/album_item.dart';
import '../Items/sok_item.dart';
import '../Api/api_artist.dart';
import '../Items/artist_item.dart';

class MyState extends ChangeNotifier {
  List<SokItem> _sokList = [];

  List<SokItem> get soklist => _sokList;

  ArtistItem? _artist = null;

  ArtistItem? get artist => _artist;

  Future hamtaLista() async {
    List<SokItem> lista = await SokLista.fetchAlbumList();
    _sokList = lista;
    notifyListeners();
  }

  Future hamtaArtist() async {
    ArtistItem artist = await ArtistFetcher.fetchArtist();
    _artist = artist;
    notifyListeners();
  }
}
