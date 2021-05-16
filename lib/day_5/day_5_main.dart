import 'package:challenge_100_days/theme_data.dart';
import 'package:flutter/material.dart';

class Day5Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container buildUperContainer() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 80.0),
        height: MediaQuery.of(context).size.height * .67,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/day_5_back1.png')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MEDITATE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Meditation App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            buildUperContainer(),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: MediaQuery.of(context).size.height * .55,
                ),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/day_5_mail.png',
                            height: 30,
                            width: 20,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/day_5_lock.png',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    //Todo Button
                    SizedBox(
                      width: double.infinity,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Challenge.color('F9941C'),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      'Don\'t have an account yet?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      'Create an account',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 20.0,
                color: Challenge.color('F9941C'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
