import 'package:flutter/material.dart';

class Day5NowPlaying extends StatefulWidget {
  @override
  _Day5NowPlayingState createState() => _Day5NowPlayingState();
}

class _Day5NowPlayingState extends State<Day5NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 80.0),
        height: MediaQuery.of(context).size.height * .50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/day_5_back3.png')),
        ),
        child: Column(
          children: [
            Text(
              'Meditation App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'MEDITATE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
