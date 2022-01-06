import 'package:flutter/material.dart';

import '../Items/review_item.dart';

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
    if (rad == null) return Container();
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(albumText,
            style: const TextStyle(fontSize: 20, color: Colors.white)),
        Text(artistText, style: const TextStyle(color: Colors.white)),
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
              /* Lägg till review */
              authorReader.clear();
              reviewReader.clear();
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            child: const Text('ADD'))
      ],
    ));
  }
}

Widget iconEtt() {
  Color ratingColor = Colors.white;
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
  Color ratingColor = Colors.white;
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

Widget iconTre() {
  Color ratingColor = Colors.white;
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

Widget iconFyra() {
  Color ratingColor = Colors.white;
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
  Color ratingColor = Colors.white;
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
