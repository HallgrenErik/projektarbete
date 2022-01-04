class Review {
  String id;
  String albumName;
  String reviewAuthor = 'Anonymous';
  int reviewRating;
  String reviewText = 'No review text found.';

  Review(
      {required this.id,
      required this.albumName,
      required this.reviewAuthor,
      required this.reviewRating,
      required this.reviewText});

  static Map<String, dynamic> toJson(Review review) {
    return {
      'title': [
        {
          'album': review.albumName,
          'author': review.reviewAuthor,
          'rating': review.reviewRating.toString(),
          'text': review.reviewText
        }
      ],
      'done': false,
    };
  }

  static Review fromJson(Map<String, dynamic> json) {
    return Review(
        id: json['id'],
        albumName: json['album'],
        reviewAuthor: json['author'],
        reviewRating: int.parse(json['reviewRating']),
        reviewText: json['reviewText']);
  }
}
