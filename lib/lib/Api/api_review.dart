import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Items/review_item.dart';

const apiKey = '8f02a3ba-6bc0-4215-acca-eca2854346f6';
const apiURL = 'https://todoapp-api-pyq5q.ondigitalocean.app';

class ReviewAPI {
  static Future<List<Review>> addItem(Review review) async {
    Map<String, dynamic> json = Review.toJson(review);
    var bodyString = jsonEncode(json);
    var respone = await http.post(
      Uri.parse('$apiURL/todos?key=$apiKey'),
      body: bodyString,
      headers: {'Content-Type': 'application/json'},
    );
    bodyString = respone.body;
    var list = jsonDecode(bodyString);
    return list.map<Review>((data) {
      return Review.fromJson(data);
    }).toList();
  }
}

class MyState extends ChangeNotifier {
  List<Review> _list = [];
  Review? _review;

  Review? get review => _review;

  List<Review> get list => _list;

  /*Future getList() async {
    List<Review> list = await ReviewAPI.itemList();
    _list = list;
    notifyListeners();
  }*/

  void addTask(Review review) async {
    _list = await ReviewAPI.addItem(review);
    notifyListeners();
  }
}
