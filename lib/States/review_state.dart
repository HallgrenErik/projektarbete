import 'package:flutter/material.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';

import '../Items/review_item.dart';
import '../Api/api_review.dart';

class ReviewState extends StatefulWidget {
  final Review? review;

  ReviewState(this.review);
  @override
  State<ReviewState> createState() => _ReviewState();
}

class _ReviewState extends State<ReviewState> {
  String albumText = 'Passas från när man går in för att skriva review.';
  String artistText = 'Samma som albumText.';
  String authorText = 'Anonymous';
  final TextEditingController authorReader = TextEditingController();
  int ratingValue = 0;
  String reviewResponse = 'No review found.';
  final TextEditingController reviewReader = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _review(context, widget.review);
  }

  Widget _review(context, rad) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(albumText,
            style: const TextStyle(fontSize: 20, color: Colors.black)),
        Text(artistText, style: const TextStyle(color: Colors.black)),
        Container(
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextField(
              controller: authorReader,
              decoration:
                  const InputDecoration(hintText: "Optional: Write Username"),
            ),
          ),
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextField(
              controller: reviewReader,
              decoration: const InputDecoration(hintText: "Write a Review"),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [iconEtt(), iconTva(), iconTre(), iconFyra(), iconFem()],
        ),
        ElevatedButton(
            onPressed: () {
              authorText = authorReader.text;
              reviewResponse = reviewReader.text;
              Provider.of<MyState>(context, listen: false).addReview(
                  albumText, authorText, reviewResponse, ratingValue);
              authorReader.clear();
              reviewReader.clear();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            child: const Text('ADD'))
      ],
    ));
  }
}

Widget iconEtt() {
  Color ratingColor = Colors.black;
  return IconButton(
    icon: Icon(
      Icons.star,
      color: ratingColor,
      size: 40,
    ),
    onPressed: () {
      ratingColor = Colors.yellow;
    },
  );
}

Widget iconTva() {
  Color ratingColor = Colors.black;
  return IconButton(
    icon: Icon(
      Icons.star,
      color: ratingColor,
      size: 40,
    ),
    onPressed: () {
      ratingColor = Colors.black;
    },
  );
}

Widget iconTre() {
  Color ratingColor = Colors.black;
  return IconButton(
    icon: Icon(
      Icons.star,
      color: ratingColor,
      size: 40,
    ),
    onPressed: () {
      ratingColor = Colors.black;
    },
  );
}

Widget iconFyra() {
  Color ratingColor = Colors.black;
  return IconButton(
    icon: Icon(
      Icons.star,
      color: ratingColor,
      size: 40,
    ),
    onPressed: () {
      ratingColor = Colors.yellow;
    },
  );
}

Widget iconFem() {
  Color ratingColor = Colors.black;
  return IconButton(
    icon: Icon(
      Icons.star,
      color: ratingColor,
      size: 40,
    ),
    onPressed: () {
      ratingColor = Colors.yellow;
    },
  );
}
