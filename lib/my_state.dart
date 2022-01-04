import 'package:flutter/material.dart';
import 'package:my_first_app/Api/api_album.dart';
import 'package:my_first_app/Api/api_sok_resultat.dart';
import 'package:my_first_app/Items/album_item.dart';
import 'package:my_first_app/Items/sok_item.dart';

class MyState extends ChangeNotifier {
  AlbumItem? _album = null;

  AlbumItem? get album => _album;

  List<SokItem> _sokList = [];

  List<SokItem> get soklist => _sokList;

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
}
