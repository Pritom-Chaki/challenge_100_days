import 'package:challenge_100_days/day_3/day_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_data.dart';

class Day3Main extends StatefulWidget {
  @override
  _Day3MainState createState() => _Day3MainState();
}

class _Day3MainState extends State<Day3Main> {
  fontStyleMethod(TextStyle sansStyle) {
    return GoogleFonts.openSans(
      textStyle: sansStyle,
    );
  }

  Widget _buildTopRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello,',
                style: fontStyleMethod(TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
                // TextStyle(fontSize: 42, color: Colors.white, fontFamily: OpenSans),
                ),
            Text('John Doe',
                style: fontStyleMethod(TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
                // TextStyle(fontSize: 42, color: Colors.white, fontFamily: OpenSans),
                ),
          ],
        ),
        CircleAvatar(
          radius: 24.0,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          backgroundColor: Colors.transparent,
        )
      ]),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Where you will go',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
                Expanded(
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(top: 80.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          color: Colors.white),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Choose your Transport',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Challenge.color('6BC5E8'),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bus',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      height: 18.0,
                      width: 75.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('Select'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/day_3_bus.png',
                  height: 90,
                  width: 180,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.only(left: 15.0, top: 10.0, bottom: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Challenge.color('6BC5E8'),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MRT',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      height: 18.0,
                      width: 75.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('Select'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/day_3_train.png',
                  height: 90,
                  width: 180,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 500)
      ]),
    );
  }

  Widget _buildColumn({String text1, text2}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text1,
            style: fontStyleMethod(TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold))),
        Text(text2,
            style: fontStyleMethod(TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold))),
      ],
    );
  }

  Widget _buildTopBox() {
    return Align(
      alignment: Alignment.center,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          height: 90,
          width: MediaQuery.of(context).size.width * .89,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildColumn(text1: 'Balance', text2: '\$ 18'),
              _buildColumn(text1: 'Rewards', text2: '\$ 10.25'),
              _buildColumn(text1: 'Total Trips', text2: '189'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 32), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 32), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on, size: 32), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 40.0),
          //  height: double.infinity,
          width: MediaQuery.of(context).size.width,

          color: Challenge.color('3A9EC1'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopRow(),
              _buildSearchBox(),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 20.0),

                color: Challenge.color('3A9EC1'),
                child: Stack(
                  children: [
                    _buildContainer(),
                    _buildTopBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
