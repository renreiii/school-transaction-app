import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppColors.baseBackgroundColor,
          padding: EdgeInsets.all(width * 0.01),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}
