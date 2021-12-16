import 'package:flutter/material.dart';

class AlbumItem {
  String albumTitel = 'Acdc';
  String artistName = 'Acdc';
  var betyg;
  String review = 'ingen än';

  AlbumItem(
    this.albumTitel,
    this.artistName,
    this.betyg,
    this.review,
  );

  static AlbumItem fromJson(Map<String, dynamic> json) {
    return AlbumItem(
      albumTitle: json['strAlbum'],
      artistName: json['strArtist'],
    );
  }
}

class MyState extends ChangeNotifier {
  List<AlbumItem> list = [];

  List<AlbumItem> get lista => list;
}
