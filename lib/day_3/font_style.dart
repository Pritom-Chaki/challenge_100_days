import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyleClass {
  fontStyleMethod({TextStyle sansStyle}) {
    return GoogleFonts.openSans(
      textStyle: sansStyle,
    );
  }
}
