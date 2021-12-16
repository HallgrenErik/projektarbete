import 'package:flutter/material.dart';
import './album_view.dart';
import './mina_reviews.dart';
import 'album_funktioner.dart';
import 'artist_view.dart';
import 'avancerad_sokning.dart';
import 'start_sida2.dart';

class Startsida extends StatefulWidget {
  const Startsida({Key? key}) : super(key: key);

  @override
  State<Startsida> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<Startsida>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GLITTER",
            style: TextStyle(fontWeight: FontWeight.bold)),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "HOME PAGE",
            ),
            Tab(
              text: "MY REVIEWS",
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AvanceradSokning()),
                );
              }),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Mainpage(),
          ),
          Center(
            child: MinaReviews(),
          ),
        ],
      ),
    );
  }
}
