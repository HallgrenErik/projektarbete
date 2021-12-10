import 'package:flutter/material.dart';
import './start_sida.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Start Sida',
      home: StartSida(),
    );
  }
}
