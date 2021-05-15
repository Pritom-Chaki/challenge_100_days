import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../theme_data.dart';

class DateNDay {
  final String day, date;
  final bool isToday;
  DateNDay({this.day, this.date, this.isToday});
}

List<DateNDay> dateList = [
  DateNDay(
    day: 'Mon',
    date: '8',
    isToday: false,
  ),
  DateNDay(
    day: 'Tue',
    date: '9',
    isToday: false,
  ),
  DateNDay(
    day: 'Wed',
    date: '10',
    isToday: false,
  ),
  DateNDay(
    day: 'Thu',
    date: '11',
    isToday: false,
  ),
  DateNDay(
    day: 'Fri',
    date: '12',
    isToday: true,
  ),
  DateNDay(
    day: 'Sat',
    date: '13',
    isToday: false,
  ),
  DateNDay(
    day: 'Sun',
    date: '14',
    isToday: false,
  ),
  DateNDay(
    day: 'Mon',
    date: '15',
    isToday: false,
  ),
  DateNDay(
    day: 'Tue',
    date: '16',
    isToday: false,
  ),
];

class Day4Details extends StatefulWidget {
  @override
  _Day4DetailsState createState() => _Day4DetailsState();
}

class _Day4DetailsState extends State<Day4Details> {
  Widget _buildTop() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Weekly Activity',
            style: TextStyle(
                color: Challenge.color('FE685E'),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 60,
          //color: Colors.red,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dateList.length,
              itemBuilder: (BuildContext context, int index) {
                return (dateList[index].isToday == false)
                    ? Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Text(
                              dateList[index].day,
                              style: TextStyle(
                                color: Challenge.color('AC7197'),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              dateList[index].date,
                              style: TextStyle(
                                  color: Challenge.color('AC7197'),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 2.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Challenge.color('FE685E')),
                        child: Column(
                          children: [
                            Text(
                              dateList[index].day,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 7.0),
                            Text(
                              dateList[index].date,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      );
              }),
        )
      ],
    );
  }

  Widget _buildIndicator() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Weekly Points',
            style: TextStyle(
                color: Challenge.color('FE685E'),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10.0),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width * .90,
          lineHeight: 8.0,
          percent: 0.7,
          backgroundColor: Challenge.color('AC7197'),
          progressColor: Challenge.color('FE685E'),
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('1780 pts',
                style:
                    TextStyle(color: Challenge.color('FE685E'), fontSize: 12)),
            Text('2000 pts',
                style:
                    TextStyle(color: Challenge.color('AC7197'), fontSize: 12)),
          ],
        ),
      ],
    );
  }

  Container buildContainer({String text1, text2, text3, imgUrl}) {
    return Container(
      height: 100,
      width: double.infinity,
      // color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text1,
                  style: TextStyle(
                      color: Challenge.color('AC7197'), fontSize: 16)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(text2,
                      style: TextStyle(
                          color: Challenge.color('FE685E'), fontSize: 24)),
                  Text(text3,
                      style: TextStyle(
                          color: Challenge.color('AC7197'), fontSize: 12)),
                ],
              )
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/day_4_clock.png',
            height: 30,
            width: 30,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/day_4_batch.png',
            height: 30,
            width: 30,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/day_4_star.png',
            height: 30,
            width: 30,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Challenge.color('FE685E'),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/day_4_add.png',
                  height: 25,
                  width: 25,
                  fit: BoxFit.fill,
                ),
              ))),
      body: Container(
        color: Challenge.color('502051'),
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            _buildTop(),
            SizedBox(height: 10.0),
            _buildIndicator(),
            SizedBox(height: 20.0),
            buildContainer(
              text1: 'Running',
              text2: '30',
              text3: 'min',
              imgUrl: 'assets/images/day_4_walk.png',
            ),
            buildContainer(
              text1: 'Ball Exercise',
              text2: '15 x',
              text3: '',
              imgUrl: 'assets/images/day_4_ball.png',
            ),
            buildContainer(
              text1: 'Planking',
              text2: '5',
              text3: 'min',
              imgUrl: 'assets/images/day_4_push_down.png',
            ),
            buildContainer(
              text1: 'Push Up',
              text2: '20 x',
              text3: '',
              imgUrl: 'assets/images/day_4_push_up.png',
            ),
          ],
        ),
      ),
    );
  }
}
