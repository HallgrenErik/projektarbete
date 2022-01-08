import './compiled_data_item.dart';

class Review {
  String id;
  CompiledData compiledData;
  bool redundant;

  Review({
    required this.id,
    required this.compiledData,
    required this.redundant,
  });

  static Map<String, dynamic> toJson(Review review) {
    return {
      'title': CompiledData.toJson(review.compiledData),
      'done': review.redundant
    };
  }

  static Review fromJson(Map<String, dynamic> json) {
    return Review(
        id: json['id'],
        compiledData: CompiledData.fromJson(json['title']),
        redundant: json['done']);
  }
}
