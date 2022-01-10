import 'package:flutter/material.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:provider/provider.dart';

import '../States/review_state.dart';

class SkrivReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).hamtaAlbum();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write Review'),
        centerTitle: true,
      ),
      body: Consumer<MyState>(
          builder: (context, state, child) => ReviewState(state.album)),
    );
  }
}
