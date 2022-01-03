import 'package:flutter/material.dart';
import 'package:my_first_app/Api/api_album.dart';
import 'package:my_first_app/Api/api_sok_resultat.dart';
import 'package:my_first_app/Items/album_item.dart';
import 'package:my_first_app/Items/sok_item.dart';

class MyState extends ChangeNotifier {
  List<AlbumItem> albumList = [];

  List<AlbumItem> get albumLista => albumList;

  List<SokItem> sokList = [];

  List<SokItem> get lista => sokList;

  Future hamtaLista() async {
    List<SokItem> sokLista = await SokLista.fetchAlbumList();
    sokList = sokLista;
    notifyListeners();
  }

  Future hamtaAlbum() async {
    List<AlbumItem> albumLista = await AlbumFetcher.fetchAlbum();
    albumList = albumLista;
    notifyListeners();
  }
}
