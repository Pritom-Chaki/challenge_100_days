import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_data.dart';

class Day4Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/day_4_back_img.png'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            Image.asset(
              'assets/images/day_4_logo.png',
              height: 125,
              width: 120,
              fit: BoxFit.fill,
            ),
            Text(
              'FLASH',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JungleFever'),
            ),
            Text(
              'GYM',
              style: TextStyle(
                  fontSize: 40,
                  color: Challenge.color('FE685E'),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JungleFever'),
            ),
            Text(
              'Get in shape quickly',
              style: TextStyle(color: Colors.white),
            ),
            Spacer(flex: 1),
            SizedBox(
              width: MediaQuery.of(context).size.width * .33,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Challenge.color('FE685E'),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // side: BorderSide(
                  //   color: Pendu.color('90A0B2'),
                  // ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * .33,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Challenge.color('733E6A'),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // side: BorderSide(
                  //   color: Pendu.color('90A0B2'),
                  // ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
