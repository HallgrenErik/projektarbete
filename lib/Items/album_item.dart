class AlbumItem {
  String albumTitle;
  String artistName;
  String cover;
  String? albumDescription;
  String URL;

  AlbumItem({
    required this.albumTitle,
    required this.artistName,
    required this.cover,
    this.albumDescription,
    required this.URL,
  });

  static AlbumItem albumFromJson(Map<String, dynamic> json) {
    return AlbumItem(
        albumTitle: json["name"],
        artistName: json["artist"],
        cover: json['image'][4]['#text'],
        albumDescription:
            json['wiki']?['summary'] ?? 'No album description found',
        URL: json['url']);
  }
}

class TrackItem {
  String albumTitle;
  String artistName;
  String? track;

  TrackItem({required this.albumTitle, required this.artistName, this.track});

  static TrackItem albumFromJson(Map<String, dynamic> json) {
    return TrackItem(
        albumTitle: json["name"],
        artistName: json["artist"],
        track: json['tracks']['track'][1]['name']);
  }
}
