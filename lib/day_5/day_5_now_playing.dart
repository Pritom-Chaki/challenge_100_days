import 'package:flutter/material.dart';

import '../theme_data.dart';

class Day5NowPlaying extends StatefulWidget {
  @override
  _Day5NowPlayingState createState() => _Day5NowPlayingState();
}

class _Day5NowPlayingState extends State<Day5NowPlaying> {
  Widget _buildMusicButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
            color: Colors.black.withGreen(100),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/day_5_backward.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
            )),
        SizedBox(width: 10.0),
        Card(
            color: Challenge.color('F9941C'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/day_5_play.png',
                height: 40,
                width: 40,
                fit: BoxFit.fill,
              ),
            )),
        SizedBox(width: 10.0),
        Card(
            color: Colors.black.withGreen(100),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/day_5_forward.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
            )),
      ],
    );
  }

  Widget _buildUpperContainer() {
    return Container(
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
            'NOW PLAYING',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20.0),
          Text(
            'Heartfelt Melody',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Orchestra Studio',
            style: TextStyle(
                color: Challenge.color('F9941C'),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '09:45',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.0),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 5,
                    width: 200,
                    color: Challenge.color('F9941C'),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    height: 5,
                    width: 80,
                    color: Colors.black.withGreen(100),
                  ),
                  Positioned(
                    right: 80,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Challenge.color('F9941C')),
                    ),
                  )
                ],
              ),
              SizedBox(width: 10.0),
              Text(
                '21:07',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMusicList({String text1, text2}) {
    return Column(
      children: [
        Divider(),
        Row(
          children: [
            Card(
                color: Challenge.color('F9941C'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/day_5_pause.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                  ),
                )),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                Text(text2,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey))
              ],
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            _buildUpperContainer(),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0),
                      child: Text('Other Audio in the Playlist',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Challenge.color('4A772C'))),
                    ),
                    _buildMusicList(
                        text1: 'Summer Romance', text2: "Ezra Queens | 18:42"),
                    _buildMusicList(
                        text1: 'Moonlight Sanata',
                        text2: "Sherina Landorf | 22:16"),
                    _buildMusicList(
                        text1: 'Intergalacting Song',
                        text2: "Kayleigh Coleman | 36:21"),
                    _buildMusicList(
                        text1: 'Hymn of the Forest',
                        text2: "Ultimusica Studio | 42:38"),
                  ],
                ),
              ),
            ),
            Align(alignment: Alignment.center, child: _buildMusicButton()),
          ],
        ),
      ),
    );
  }
}
