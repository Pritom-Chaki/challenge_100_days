import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CursePage extends StatefulWidget {
  @override
  _CursePageState createState() => _CursePageState();
}

class _CursePageState extends State<CursePage> {
  Widget _buildTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined,
              color: Colors.white, size: 20),
        ),
        Text(
          'Curse',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.more_vert, color: Colors.white, size: 20),
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return Container(
      height: MediaQuery.of(context).size.height * .28,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Spanish',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 3.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Text(
                      ' Begginer',
                      style: TextStyle(color: Colors.amber, fontSize: 16),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.amber,
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .5,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/dimond.png',
                      height: 22,
                      width: 22,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/dimond.png',
                      height: 22,
                      width: 22,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      '2 Milestones',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          CircularPercentIndicator(
            radius: 90.0,
            lineWidth: 5.0,
            percent: 43 / 100,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '43',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    Text(
                      '%',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  'Completed',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            progressColor: Colors.white,
            backgroundColor: Colors.white38,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomCard(
      {IconData mIcon, String text1, double rank, Color mColor}) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        width: 135,
        height: 135,
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    mIcon,
                    size: 30,
                    color: mColor,
                  ),
                )),
            Text(
              text1,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              rank.toStringAsFixed(0) + '/5',
              style: TextStyle(fontSize: 12),
            ),
            LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: 120.0,
              lineHeight: 5.0,
              percent: rank / 5,
              backgroundColor: Colors.grey[400],
              progressColor: mColor,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15.0),
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/page_2_background.png'),
                fit: BoxFit.fitWidth)),
        child: Column(
          children: [
            _buildTopBar(),
            _buildMiddle(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildBottomCard(
                    mIcon: Icons.description,
                    text1: 'Basics',
                    rank: 4,
                    mColor: Colors.amber),
                _buildBottomCard(
                    mIcon: Icons.business_center,
                    text1: 'Occupations',
                    rank: 1,
                    mColor: Colors.red),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildBottomCard(
                    mIcon: Icons.chat,
                    text1: 'Conversation',
                    rank: 3,
                    mColor: Colors.blue),
                _buildBottomCard(
                    mIcon: Icons.location_on,
                    text1: 'Places',
                    rank: 1,
                    mColor: Colors.green),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildBottomCard(
                    mIcon: Icons.group,
                    text1: 'Family members',
                    rank: 3,
                    mColor: Colors.purple),
                _buildBottomCard(
                    mIcon: Icons.local_cafe_rounded,
                    text1: 'Foods',
                    rank: 2,
                    mColor: Colors.indigo),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
