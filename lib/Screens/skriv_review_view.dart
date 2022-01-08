import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../States/review_state.dart';
import '../Api/api_review.dart';

class SkrivReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Write Review'),
          centerTitle: true,
        ),
        body: Consumer<MyState>(
            builder: (context, state, child) => ReviewState(state.review)));
  }
}
