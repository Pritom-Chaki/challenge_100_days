import 'package:challenge_100_days/day_1/day_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class BitCoinWallet extends StatefulWidget {
  @override
  _BitCoinWalletState createState() => _BitCoinWalletState();
}

class _BitCoinWalletState extends State<BitCoinWallet> {
  var data = [0.8, 1.0, 1.2, 1.1, 1.25, 1.2, 1.3, 1.1];
  Widget _buildCard() {
    return //Container of top Card
        Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            //Card top row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/bit_coin.png',
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 20.0),
                Text(
                  'Bitcoin',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Spacer(),
                Text(
                  'BTC',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            //Card Middle Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //Left side Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3.529020 BTC',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$19.153 USD',
                      style: TextStyle(fontSize: 18, color: Colors.black45),
                    )
                  ],
                ),
                //Ridgt side column
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    '- 2.32%',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                )
              ],
            ),
            //Bottom down icon
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 50,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMiddleGraph() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Chip(
              label: Text('Day', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.transparent,
            ),
            Chip(
              label: Text('Week',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)),
              backgroundColor: Colors.grey,
            ),
            Chip(
              label: Text('Month', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.transparent,
            ),
            Chip(
              label: Text('Year', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.transparent,
            )
          ],
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Lower: \$4.895',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Lower: \$6.857',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Stack(
                  children: [
                    Sparkline(
                      data: data,
                      lineColor: Colors.amber,
                      pointsMode: PointsMode.last,
                      pointSize: 12.0,
                      pointColor: Colors.amberAccent,
                      sharpCorners: true,
                      fillMode: FillMode.below,
                      fillColor: Colors.pink[50],
                      fallbackHeight: 80,
                    ),
                    Positioned(
                      bottom: 5.0,
                      left: 40.0,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.circle,
                              size: 12, color: Colors.amberAccent),
                          SizedBox(width: 10.0),
                          Text(
                            'Lower: \$4.895',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: 80,
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white, Colors.blue, Colors.blue])),
                  child: Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text('Buy BTC')
              ],
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: 80,
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white, Colors.red, Colors.red])),
                  child: Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text('Sell BTC')
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            Icon(Icons.arrow_back_ios_outlined, color: Colors.grey, size: 30),
        title: Text(
          ' Bitcoin Wallets',
          style: TextStyle(color: Colors.black87, fontSize: 26),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 32,
          ),
          SizedBox(width: 15.0),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          children: [_buildCard(), _buildMiddleGraph(), _buildBottom()],
        ),
      ),
    );
  }
}
