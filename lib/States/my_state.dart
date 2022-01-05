import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_first_app/Api/api_album.dart';
import 'package:my_first_app/Api/api_sok_resultat.dart';
import 'package:my_first_app/Items/album_item.dart';
import 'package:my_first_app/Items/sok_item.dart';
import 'package:my_first_app/Screens/sokning_view.dart';

import '../Api/api_artist.dart';
import '../Items/artist_item.dart';

class MyState extends ChangeNotifier {
  AlbumItem? _album = null;

  AlbumItem? get album => _album;

  List<SokItem> _sokList = [];

  List<SokItem> get soklist => _sokList;

  ArtistItem? _artist;

  ArtistItem? get artist => _artist;

  Future hamtaLista() async {
    List<SokItem> sokList = await SokLista.fetchAlbumList();
    _sokList = sokList;
    notifyListeners();
  }

  Future hamtaAlbum() async {
    AlbumItem album = await AlbumFetcher.fetchAlbum();
    _album = album;
    notifyListeners();
  }

  Future hamtaArtist() async {
    ArtistItem artist = await ArtistFetcher.fetchArtist();
    _artist = artist;
    notifyListeners();
  }
}

class Sokord with ChangeNotifier {
  String _sokord = '';

  String get sokord => _sokord;

  void setWord(dynamic, String ord) {
    _sokord = ord;
    print(sokord);
    notifyListeners();
  }
}
