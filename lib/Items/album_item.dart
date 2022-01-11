class AlbumItem {
  String albumTitle;
  String artistName;
  String cover;
  String? albumDescription;

  AlbumItem({
    required this.albumTitle,
    required this.artistName,
    required this.cover,
    this.albumDescription,
  });

  static AlbumItem albumFromJson(Map<String, dynamic> json) {
    return AlbumItem(
      albumTitle: json["name"],
      artistName: json["artist"],
      cover: json['image'][4]['#text'],
      albumDescription: json['wiki']?['summary'] ?? 'No description found',
    );
  }
}
