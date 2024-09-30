import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginRegisterStyle{
  static Color topGradient = Color(0xFF000080);
  static Color bottomGradient = Color(0xFF41BDF7);
  static Color buttonTextColor = Color(0xFF0653A0);
  static Color dialogBackground = Color(0xFFD9D9D9);
  static Color dialogShadow = Color(0xFF500000).withOpacity(0.6);


  static EdgeInsets inputPadding = EdgeInsets.symmetric(vertical: 10);
  static TextStyle titleFont = GoogleFonts.irishGrover();
  static Decoration gradientDecoration =BoxDecoration(
    gradient: LinearGradient(colors: [
      LoginRegisterStyle.topGradient,
      LoginRegisterStyle.bottomGradient
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
    )
  );
  static TextStyle dialogTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: LoginRegisterStyle.buttonTextColor);


}