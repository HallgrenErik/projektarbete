class CompiledData {
  String album;
  String author;
  int rating;
  String reviewText;

  CompiledData(
      {required this.album,
      required this.author,
      required this.rating,
      required this.reviewText});

  static Map<String, dynamic> toJson(CompiledData compiledData) {
    return {
      'album': compiledData.album,
      'author': compiledData.author,
      'rating': compiledData.rating,
      'reviewText': compiledData.reviewText
    };
  }

  static CompiledData fromJson(Map<String, dynamic> json) {
    return CompiledData(
        album: json['album'],
        author: json['author'],
        rating: json['rating'],
        reviewText: json['reviewText']);
  }
}
