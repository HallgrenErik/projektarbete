import 'package:flutter/material.dart';
import '../Screens/album_info_view.dart';
import '../States/album_sok.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';

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
        leading: Image.network(
          review.compiledData.albumCover,
          height: 100,
          width: 100,
        ),
        title: Text(review.compiledData.album,
            style: const TextStyle(color: Colors.white)),
        subtitle: Text(review.compiledData.artist,
            style: const TextStyle(color: Colors.white)),
        trailing: Text(
            review.compiledData.author +
                ': ' +
                review.compiledData.rating.toString() +
                '/5',
            style: const TextStyle(color: Colors.white)),
        onTap: () {
          Provider.of<MyState>(context, listen: false)
              .setAA(review.compiledData.artist, review.compiledData.album);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AlbumInfoView()));
        });
  }
}
