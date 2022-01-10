class CompiledData {
  String album;
  String artist;
  String author;
  int rating;
  String reviewText;

  CompiledData(
      {required this.album,
      required this.artist,
      required this.author,
      required this.rating,
      required this.reviewText});

  static Map<String, dynamic> toJson(CompiledData compiledData) {
    return {
      'album': compiledData.album,
      'artist': compiledData.artist,
      'author': compiledData.author,
      'rating': compiledData.rating,
      'reviewText': compiledData.reviewText
    };
  }

  static CompiledData fromJson(Map<String, dynamic> json) {
    return CompiledData(
        album: json['album'],
        artist: json['artist'],
        author: json['author'],
        rating: json['rating'],
        reviewText: json['reviewText']);
  }
}
