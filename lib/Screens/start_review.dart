import 'package:flutter/material.dart';
import '../States/my_state.dart';
import '../Lists/review_list.dart';
import 'package:provider/provider.dart';
import '../model.dart';

//byta namn på denna, kopplad till första sidan

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      filterbar(),
      filter(),
      const Divider(color: Colors.white),
    ]));
  }
}

class MinaReviews extends StatelessWidget {
  const MinaReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<MyState>(
            builder: (context, state, child) => ReviewList(state.list)));
  }
}
