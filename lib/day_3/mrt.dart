import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_data.dart';

class MrtPages extends StatefulWidget {
  @override
  _MrtPagesState createState() => _MrtPagesState();
}

class _MrtPagesState extends State<MrtPages> {
  fontStyleMethod(TextStyle sansStyle) {
    return GoogleFonts.openSans(
      textStyle: sansStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildTopCard() {
      return Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Challenge.color('3A9EC1'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    color: Colors.grey,
                    width: 1.5,
                    height: 40,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Form',
                      style: fontStyleMethod(TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400))),
                  Text('Lorem MRT Station',
                      style: fontStyleMethod(TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 230,
                      height: 2,
                      color: Colors.grey),
                  Text('To',
                      style: fontStyleMethod(TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400))),
                  Text('Dolor MRT Station',
                      style: fontStyleMethod(TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget _buildSchedule({String time1, time2, dolar}) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.schedule_outlined,
                      size: 14,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      time1,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.arrow_right_alt, size: 20),
                    Icon(Icons.arrow_right_alt, size: 20),
                    SizedBox(width: 10.0),
                    Text(
                      time2,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 14),
                    SizedBox(width: 10.0),
                    Text(
                      'Lorem MRT Station',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '\$ ' + dolar,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.0),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Challenge.color('3A9EC1')),
                    child: Text('Select',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          width: MediaQuery.of(context).size.width,
          color: Challenge.color('3A9EC1'),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('MRT',
                  style: fontStyleMethod(TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/day_3_train.png',
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 40.0),
                padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildTopCard(),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Choose Schedule',
                          style: fontStyleMethod(TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
                    ),
                    _buildSchedule(
                        time1: '10 : 00', time2: '10 : 30', dolar: '5.0'),
                    Divider(
                      height: 10,
                      thickness: 2,
                    ),
                    _buildSchedule(
                        time1: '11 : 05', time2: '11 : 45', dolar: '5.0'),
                    Divider(
                      height: 10,
                      thickness: 2,
                    ),
                    _buildSchedule(
                        time1: '11 : 25', time2: '12 : 30', dolar: '3.0'),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
