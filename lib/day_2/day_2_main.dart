import 'package:flutter/material.dart';

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
              child: Image.asset('assets/images/card_background.png')),
          Wrap(
            children: [
              Container(
                padding: EdgeInsets.all(3.0),
                color: Colors.blue[100],
                child: Text(
                  'Intermediate',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Text('Today\'s\nchallenge ',
                  style: TextStyle(color: Colors.blue, fontSize: 16)),
              Text('German meals',
                  style: TextStyle(color: Colors.blue, fontSize: 16)),
              Row(
                children: [
                  Image.asset('assets/images/dimond.png'),
                  Text('Take this lesson to earn a new milestone',
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                ],
              )
            ],
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
          children: [
            _buildUperTab(),
            SizedBox(height: 40.0),
            _buildProfile(),
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            _buildCard(),
          ],
        ),
      ),
    );
  }
}
