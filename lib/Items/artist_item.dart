class ArtistItem {
  String artistName;
  String genre;
  String artistDescription;

  ArtistItem({
    required this.artistName,
    required this.genre,
    required this.artistDescription,
  });
  static ArtistItem artistItemFromJson(Map<String, dynamic> json) {
    return ArtistItem(
      artistName: json['name'],
      genre: json['tags']['tag'][0]['name'],
      artistDescription:
          json['bio']?['content'] ?? 'No artist description found.',
    );
  }
}
