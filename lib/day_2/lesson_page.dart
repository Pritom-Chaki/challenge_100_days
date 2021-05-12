import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
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
          'Lesson',
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

  Widget _buildQuCard() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"',
                  style: TextStyle(fontSize: 50),
                ),
                Icon(
                  Icons.chat,
                  color: Colors.blue,
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Buenas noches, ¿cómo estuvo su día?',
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '"',
                style: TextStyle(fontSize: 50),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(color: Colors.blue),
        _buildDot(),
        _buildDot(),
        _buildDot(),
        _buildDot(),
      ],
    );
  }

  Container _buildDot({Color color: Colors.grey}) {
    return Container(
      margin: EdgeInsets.all(9),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 15.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/page_3_background.png'),
                fit: BoxFit.fitWidth)),
        child: Column(
          children: [
            _buildTopBar(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Text(
                'Transalte these phrases to english',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            _buildQuCard(),
            _buildIndicator(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: '   Your answer...', border: InputBorder.none),
              ),
            ),
            Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 26,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
