import 'package:challenge_100_days/day_1/day_1.dart';

import 'package:flutter/material.dart';

class Day1Main extends StatefulWidget {
  @override
  _Day1MainState createState() => _Day1MainState();
}

class _Day1MainState extends State<Day1Main> {
  String dropdownValue = 'USD';
  String dropdownValue2 = '24H';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black54),
                  child: Icon(Icons.account_balance_wallet,
                      color: Colors.white, size: 28),
                ),
                Text(
                  'Total Wallet Balance',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7)),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey),
                  iconSize: 18,
                  elevation: 1,
                  style: TextStyle(color: Colors.grey),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  underline: SizedBox(),
                  items: <String>['USD', 'EU', 'BDT', 'INR']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            //Card Middle Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Left side Column
                Column(
                  children: [
                    Text(
                      '\$39.584',
                      style: TextStyle(
                          fontSize: 38, color: Colors.black.withOpacity(0.7)),
                    ),
                    Text(
                      '7.251332 BTC',
                      style: TextStyle(fontSize: 22, color: Colors.black45),
                    )
                  ],
                ),
                //Ridgt side column
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    '+ 3.55%',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                )
              ],
            ),
            //Bottom down icon
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 60,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMidleLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sorted by higher %',
          style: TextStyle(color: Colors.grey),
        ),
        DropdownButton<String>(
          value: dropdownValue2,
          icon: const Icon(Icons.keyboard_arrow_down_outlined,
              color: Colors.grey),
          iconSize: 17,
          elevation: 1,
          style: TextStyle(color: Colors.grey),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue2 = newValue;
            });
          },
          underline: SizedBox(),
          items: <String>['24H', '7D', '1M', '1Y']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildCoinCard(
      {String url, value1, value2, value3, value4, bool value5}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(url, height: 40, width: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value1, style: TextStyle(fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Text(
                  '\$ ' + value2,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
            SizedBox(width: 30.0),
            Column(
              children: [
                Text('\$' + value3,
                    style: TextStyle(fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Text(
                  value4 + '%',
                  style: TextStyle(
                      fontSize: 12, color: value5 ? Colors.green : Colors.red),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.sort, color: Colors.grey, size: 36),
        title: Text(
          'Wallets',
          style: TextStyle(color: Colors.black87, fontSize: 28),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.grey,
            size: 36,
          ),
          SizedBox(width: 10.0),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Column(
            children: [
              _buildCard(),
              _buildMidleLine(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BitCoinWallet()),
                  );
                },
                child: _buildCoinCard(
                    url: coinList[0].imgUrl,
                    value1: coinList[0].coinValue,
                    value2: coinList[0].dollarValue,
                    value3: coinList[0].presentValue,
                    value4: coinList[0].percentChange,
                    value5: coinList[0].isPositive),
              ),
              _buildCoinCard(
                  url: coinList[1].imgUrl,
                  value1: coinList[1].coinValue,
                  value2: coinList[1].dollarValue,
                  value3: coinList[1].presentValue,
                  value4: coinList[1].percentChange,
                  value5: coinList[1].isPositive),
              _buildCoinCard(
                  url: coinList[2].imgUrl,
                  value1: coinList[2].coinValue,
                  value2: coinList[2].dollarValue,
                  value3: coinList[2].presentValue,
                  value4: coinList[2].percentChange,
                  value5: coinList[2].isPositive),
            ],
          ),
        ),
      ),
    );
  }
}
