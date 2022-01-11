class SearchItem {
  String albumTitle;
  String artistName;
  String? coverUrl = '';

  SearchItem({
    required this.albumTitle,
    required this.artistName,
    this.coverUrl,
  });
  static SearchItem searchItemFromJson(Map<String, dynamic> json) {
    return SearchItem(
      albumTitle: json['name'],
      artistName: json['artist'],
      coverUrl: json['image'][1]['#text'],
    );
  }
}
