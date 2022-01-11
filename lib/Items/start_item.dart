class StartItem {
  String startAlbumTitle;
  String startArtistName;
  String? startCoverUrl = '';
  int startPlayCount;

  StartItem(
      {required this.startAlbumTitle,
      required this.startArtistName,
      this.startCoverUrl,
      required this.startPlayCount});
  static StartItem startItemFromJson(Map<String, dynamic> json) {
    return StartItem(
      startAlbumTitle: json['name'],
      startArtistName: json['artist']['name'],
      startCoverUrl: json['image'][1]['#text'],
      startPlayCount: json['playcount'],
    );
  }
}
