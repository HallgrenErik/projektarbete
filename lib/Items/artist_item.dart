class ArtistItem {
  String artistName;
  String artistDescription;

  ArtistItem({
    required this.artistName,
    required this.artistDescription,
  });
  static ArtistItem artistFromJson(Map<String, dynamic> json) {
    return ArtistItem(
      artistName: json['name'],
      artistDescription: json['bio']['summary'],
    );
  }
}
