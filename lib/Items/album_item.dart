class AlbumItem {
  String albumTitel;
  String artistName;
  String cover;
  String description;
  //String published;

  AlbumItem({
    required this.albumTitel,
    required this.artistName,
    required this.cover,
    required this.description,
    //required this.published
  });

  static AlbumItem albumFromJson(Map<String, dynamic> json) {
    return AlbumItem(
      albumTitel: json["name"],
      artistName: json["artist"],
      cover: json['image'][4]['#text'],
      description: json['wiki']['summary'],
      // published: json['wiki']['published'],
    );
  }
}
