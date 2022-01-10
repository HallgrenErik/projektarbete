class CompiledData {
  String albumCover;
  String album;
  String artist;
  String author;
  int rating;
  String reviewText;

  CompiledData(
      {required this.albumCover,
      required this.album,
      required this.artist,
      required this.author,
      required this.rating,
      required this.reviewText});

  static Map<String, dynamic> toJson(CompiledData compiledData) {
    return {
      'albumCover': compiledData.albumCover,
      'album': compiledData.album,
      'artist': compiledData.artist,
      'author': compiledData.author,
      'rating': compiledData.rating,
      'reviewText': compiledData.reviewText
    };
  }

  static CompiledData fromJson(Map<String, dynamic> json) {
    return CompiledData(
        albumCover: json['albumCover'],
        album: json['album'],
        artist: json['artist'],
        author: json['author'],
        rating: json['rating'],
        reviewText: json['reviewText']);
  }
}
