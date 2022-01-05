import 'package:flutter/material.dart';

class SokItem {
  String albumTitel;
  String artistName;
  String? coverUrl = '';

  SokItem({
    required this.albumTitel,
    required this.artistName,
    this.coverUrl,
  });
  static SokItem sokItemFromJson(Map<String, dynamic> json) {
    return SokItem(
      albumTitel: json['name'],
      artistName: json['artist'],
      coverUrl: json['image'][1]['#text'],
    );
  }
}
