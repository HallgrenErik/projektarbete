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
}
