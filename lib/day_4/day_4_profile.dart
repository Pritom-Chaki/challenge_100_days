import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

import '../theme_data.dart';

class Day4Profile extends StatefulWidget {
  @override
  _Day4ProfileState createState() => _Day4ProfileState();
}

class _Day4ProfileState extends State<Day4Profile> {
  Widget _buildContainer({String text1, text2, imgUrl1, imgUrl2}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(text1,
                  style: TextStyle(
                      color: Challenge.color('FE685E'),
                      fontSize: 40,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.bold)),
              Text(
                text2,
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Image.asset(
            imgUrl1,
            height: 40,
            width: 60,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Image.asset(
                imgUrl2,
                height: 20,
                width: 20,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Challenge.color('612C58'),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Challenge.color('502051'),
        unselectedItemColor: Challenge.color('AC7197'),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_4_home.png',
                  height: 70, width: 70, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_4_person.png',
                  height: 70, width: 70, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_4_clock.png',
                  height: 35, width: 35, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_4_notification.png',
                  height: 70, width: 70, fit: BoxFit.cover),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/day_4_settings.png',
                  height: 70, width: 70, fit: BoxFit.cover),
              label: ''),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/day_4_back_img2.png'),
                fit: BoxFit.fill)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello', style: TextStyle(color: Colors.white)),
              Text('Amanda',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              SizedBox(height: 20.0),
              Text('How are you doing?',
                  style: TextStyle(
                      color: Challenge.color('FE685E'),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Daily activity',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ),
                    _buildContainer(
                      text1: '3680',
                      text2: 'steps',
                      imgUrl1: 'assets/images/day_4_graph1.png',
                      imgUrl2: 'assets/images/day_4_step.png',
                    ),
                    _buildContainer(
                      text1: '90',
                      text2: 'bpm',
                      imgUrl1: 'assets/images/day_4_graph2.png',
                      imgUrl2: 'assets/images/day_4_love.png',
                    ),
                    _buildContainer(
                      text1: '960',
                      text2: 'calories',
                      imgUrl1: 'assets/images/day_4_graph1.png',
                      imgUrl2: 'assets/images/day_4_fire.png',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('GOOD',
                          style: TextStyle(
                              color: Challenge.color('FE685E'),
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      Text('Perfomance',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey,
                  ),
                  RatingBar.readOnly(
                    size: 20,
                    initialRating: 4,
                    isHalfAllowed: false,
                    halfFilledIcon: Icons.star_half,
                    filledColor: Challenge.color('FE685E'),
                    emptyColor: Challenge.color('733E6A'),
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
