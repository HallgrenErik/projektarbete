import 'package:flutter/material.dart';
import '../Screens/album_info_view.dart';
import '../States/my_state.dart';
import 'package:provider/provider.dart';

import '../Items/review_item.dart';

class ReviewList extends StatelessWidget {
  final List<Review> list;

  ReviewList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
        reverse: true,
        children: list.map((review) => _reviewItem(context, review)).toList());
  }

  Widget _reviewItem(context, review) {
    return Card(
        color: const Color(0xC5BCE6),
        child: ListTile(
          leading: Image.network(
            review.compiledData.albumCover,
            height: 100,
            width: 100,
          ),
          title: Text(review.compiledData.author,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text(review.compiledData.reviewText,
              style: const TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis),
          trailing: Text(review.compiledData.rating.toString() + '/5',
              style: const TextStyle(color: Colors.white, fontSize: 20)),
          onTap: () {
            Provider.of<MyState>(context, listen: false).setAlbumArtist(
                review.compiledData.artist, review.compiledData.album);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AlbumInfoView()));
          },
        ));
  }
}

class AlbumReviewList extends StatelessWidget {
  final List<Review> list;

  AlbumReviewList(this.list);

  @override
  Widget build(BuildContext context) {
    return Column(
        children:
            list.map((review) => _albumReviewItem(context, review)).toList());
  }

  Widget _albumReviewItem(context, review) {
    return Card(
        color: const Color(0xC5BCE6),
        child: ListTile(
          title: Text(review.compiledData.author,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text(review.compiledData.reviewText,
              style: const TextStyle(color: Colors.white)),
          trailing: Text(review.compiledData.rating.toString() + '/5',
              style: const TextStyle(color: Colors.white, fontSize: 20)),
        ));
  }
}
