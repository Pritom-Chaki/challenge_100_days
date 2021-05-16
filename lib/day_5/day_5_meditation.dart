import 'package:challenge_100_days/theme_data.dart';
import 'package:flutter/material.dart';

class Day5Meditation extends StatefulWidget {
  @override
  _Day5MeditationState createState() => _Day5MeditationState();
}

class _Day5MeditationState extends State<Day5Meditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Challenge.color('F9941C'),
        type: BottomNavigationBarType.fixed,
        //selectedItemColor: Challenge.color('502051'),
        //  unselectedItemColor: Challenge.color('AC7197'),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_5_music.png',
                  height: 40, width: 40, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_5_film.png',
                  height: 40, width: 40, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_5_heart.png',
                  height: 40, width: 40, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_5_person.png',
                  height: 40, width: 40, fit: BoxFit.cover),
              label: ''),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
              height: MediaQuery.of(context).size.height * .25,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/day_5_back2.png')),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MEDITATION',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Reccommended playlist',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Challenge.color('4A772C')),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/day_5_card1.png',
                    height: 190, width: 140, fit: BoxFit.fill),
                Image.asset('assets/images/day_5_card2.png',
                    height: 190, width: 140, fit: BoxFit.fill),
                Image.asset('assets/images/day_5_card3.png',
                    height: 190, width: 70, fit: BoxFit.fill),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Reccommended playlist',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Challenge.color('4A772C')),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Image.asset('assets/images/day_5_card.png',
                    height: 150, width: 230, fit: BoxFit.fill),
                Image.asset('assets/images/day_5_card4.png',
                    height: 150, width: 100, fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
