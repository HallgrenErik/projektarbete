import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Items/review_item.dart';
import '../Items/compiled_data_item.dart';

const apiKey = '942463ea-2e2b-4263-983b-22755913b751';
const apiURL = 'https://todoapp-api-pyq5q.ondigitalocean.app';

class ReviewAPI {
  static Future<List<Review>> addReview(Review review) async {
    Map<String, dynamic> json = Review.toJson(review);
    var bodyString = jsonEncode(json);
    var response = await http.post(
      Uri.parse('$apiURL/todos?key=$apiKey'),
      body: bodyString,
      headers: {'Content-Type': 'application/json'},
    );
    bodyString = response.body;
    var list = jsonDecode(bodyString);
    return list.map<Review>((data) {
      return Review.fromJson(data);
    }).toList();
  }

  static Future<List<Review>> reviewList() async {
    http.Response response =
        await http.get(Uri.parse('$apiURL/todos?key=$apiKey'));
    var jsonResp = response.body;
    var json = jsonDecode(jsonResp);
    return json.map<Review>((data) {
      return Review.fromJson(data);
    }).toList();
  }
}
