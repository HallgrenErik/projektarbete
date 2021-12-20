class SokItem {
  String albumTitel;
  String artistName;

  SokItem({
    required this.albumTitel,
    required this.artistName,
  });
  static SokItem sokItemFromJson(Map<String, dynamic> json) {
    return SokItem(
      albumTitel: json["name"],
      artistName: json["artist"],
    );
  }
}
