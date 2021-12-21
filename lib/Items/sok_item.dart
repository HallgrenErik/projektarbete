import 'package:flutter/material.dart';

class SokItem {
  String albumTitel;
  String artistName;

  SokItem({
    required this.albumTitel,
    required this.artistName,
  });
  static SokItem sokItemFromJson(Map<ListBody, dynamic> json) {
    return SokItem(
      albumTitel: json['albummatches']['album'][8]['artist'],
      artistName: json['albummatches']['album'][8]['name'],
    );
  }
}
