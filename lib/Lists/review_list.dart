import 'package:flutter/material.dart';

import '../Items/review_item.dart';

class ReviewList extends StatelessWidget {
  final List<Review> list;

  ReviewList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: list.map((review) => _reviewItem(context, review)).toList());
  }

  Widget _reviewItem(context, review) {
    return ListTile(
        title: Text(review.compiledData.album),
        subtitle: Text(review.compiledData.artist),
        trailing: Text(review.compiledData.author +
            ': ' +
            review.compiledData.rating.toString() +
            '/5'));
  }
}
