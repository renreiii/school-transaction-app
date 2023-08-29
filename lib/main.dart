import 'package:flutter/material.dart';
import 'colors.dart';
import 'sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppColors.baseBackgroundColor,
          padding: EdgeInsets.all(screenWidth * 0.01),
          child: Row(
            children: [
              Sidebar(screenWidth: screenWidth, screenHeight: screenHeight),
            ],
          ),
        ),
      ),
    );
  }
}
