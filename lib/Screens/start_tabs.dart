import 'package:flutter/material.dart';
import '../States/start_state.dart';
import '../States/my_state.dart';
import '../Lists/review_list.dart';
import 'package:provider/provider.dart';

class DevRecomend extends StatelessWidget {
  const DevRecomend({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).getStartList();
    return Scaffold(
      body: Consumer<MyState>(
          builder: (context, state, child) => DevPage(state.startList)),
    );
  }
}

class RecentReviews extends StatelessWidget {
  const RecentReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<MyState>(
            builder: (context, state, child) => ReviewList(state.list)));
  }
}
