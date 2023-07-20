import 'package:flutter/material.dart';
import 'package:myntraclone/screens/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntraclone/screens/screen2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        )
      ),  
      home: SecondPage(),
    );
  }
}
