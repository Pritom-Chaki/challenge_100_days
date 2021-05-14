import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_data.dart';

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  fontStyleMethod(TextStyle sansStyle) {
    return GoogleFonts.openSans(
      textStyle: sansStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildTopCard() {
      return Positioned(
        top: 50.0,
        child: Card(
          elevation: 10.0,
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            height: 240,
            child: Column(
              children: [
                Row(
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
                SizedBox(height: 20.0),
                Row(
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
                              '10 : 00',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10.0),
                            Icon(
                              Icons.train_outlined,
                              size: 14,
                              color: Colors.black.withOpacity(0.3),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              '10 : 00',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 14),
                            SizedBox(width: 10.0),
                            Text(
                              'Lorem MRT Station',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 14,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              '\$ 5.0',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 50.0),
                    Image.network(
                      'https://www.investopedia.com/thmb/ZG1jKEKttKbiHi0EkM8yJCJp6TU=/1148x1148/filters:no_upscale():max_bytes(150000):strip_icc()/qr-code-bc94057f452f4806af70fd34540f72ad.png',
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        color: Challenge.color('3A9EC1'),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Text('Ticket',
                style: fontStyleMethod(TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
            Positioned(
              bottom: 0,
              child: Container(
                // height: 200,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 120.0, left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Paymnet',
                        style: fontStyleMethod(TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
                    SizedBox(height: 5.0),
                    Text('Enter Amount',
                        style: fontStyleMethod(TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold))),
                    SizedBox(height: 10.0),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue.withOpacity(0.15)),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_money,
                                color: Colors.black,
                                size: 16,
                              )),
                          Expanded(
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '5.0',
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Challenge.color('3A9EC1')),
                          child: Text('Credit Card',
                              style: fontStyleMethod(TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                        ),
                        Text('Balance: \$ 84',
                            style: fontStyleMethod(TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                      ],
                    ),
                    Divider(height: 20.0, thickness: 1.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.blue.withOpacity(0.15)),
                          child: Text('E-Wallet     ',
                              style: fontStyleMethod(TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))),
                        ),
                        Text('Balance: \$ 18',
                            style: fontStyleMethod(TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        width: MediaQuery.of(context).size.width * .75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Challenge.color('3A9EC1')),
                        child: Center(
                          child: Text('Buy Ticket',
                              style: fontStyleMethod(TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
            _buildTopCard(),
          ],
        ),
      ),
    );
  }
}
