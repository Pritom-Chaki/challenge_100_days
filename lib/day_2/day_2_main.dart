import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Day2Main extends StatefulWidget {
  @override
  _Day2MainState createState() => _Day2MainState();
}

class _Day2MainState extends State<Day2Main> {
  Widget _buildUperTab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.format_align_left),
        Spacer(),
        Image.asset(
          'assets/images/england_flag.png',
          height: 30,
          width: 30,
        ),
        Text('English'),
        Icon(Icons.keyboard_arrow_down_rounded)
      ],
    );
  }

  Widget _buildProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK-IpQmpeAjL8SyPzLc5FVmxW2TLio0HSj7Q6ACvVO9gZZR-7Xt_Aavh3kbL7KhGEezfw&usqp=CAU'),
        ),
        SizedBox(width: 10.0),
        Column(
          children: [
            Text(
              'Martha Stewart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_rounded,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(
                  'United Kingdom',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _buildCard() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/card_background.png',
                height: 200,
                width: 130,
                fit: BoxFit.fill,
              )),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            width: 200,
            height: 180,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Text(
                    'Intermediate',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('Today\'s\nchallenge ',
                    style: TextStyle(color: Colors.black, fontSize: 26)),
                Text('German meals',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/dimond.png',
                      height: 15,
                      width: 15,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 150,
                      child: Text('Take this lesson to earn a new milestone',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomBox({String text1, text2, double text3, Color backColor}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      height: 90,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: backColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            text2,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CircularPercentIndicator(
              radius: 45.0,
              lineWidth: 4.0,
              percent: text3 / 100,
              center: Text(
                text3.toStringAsFixed(0) + '%',
                style: TextStyle(color: Colors.white),
              ),
              progressColor: Colors.white,
              backgroundColor: Colors.white38,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUperTab(),
            //  SizedBox(height: 40.0),
            _buildProfile(),
            //   SizedBox(height: 30.0),
            Text(
              'Welcome back!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            _buildCard(),
            Text('Your courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildBottomBox(
                      text1: 'Spanish',
                      text2: 'Begginer',
                      text3: 43,
                      backColor: Colors.amber),
                  _buildBottomBox(
                      text1: 'Italian',
                      text2: 'Advance',
                      text3: 16,
                      backColor: Colors.green),
                  _buildBottomBox(
                      text1: 'Bengali',
                      text2: 'Begginer',
                      text3: 84,
                      backColor: Colors.blue),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
