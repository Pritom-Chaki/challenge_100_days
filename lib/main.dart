import 'package:challenge_100_days/day_1/day_1.dart';
import 'package:flutter/material.dart';

import 'day_2/day_2.dart';
import 'day_3/day_3.dart';
import 'day_4/day_4.dart';
import 'day_5/day_5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Day5NowPlaying(),
    );
  }
}
