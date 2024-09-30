import 'package:flutter/material.dart';
import 'package:lylness/pages/login_page.dart';

import 'package:google_fonts/google_fonts.dart';
import 'pages/register_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),),
            filled: true,
            fillColor: Colors.white30,

            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,)
          ), 
          textTheme: GoogleFonts.montserratTextTheme(),
        
      ),
      home: RegisterPage(),
    );
  }
}


